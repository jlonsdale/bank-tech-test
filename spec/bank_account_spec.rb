require 'bank_account'

describe BankAccount do
  
  let(:printer) {double :printer}
  let(:printer_class) {double :printer_class, new: printer}
  subject(:account) {described_class.new}

  it 'initializes with a balance of zero' do
    expect(account.balance).to eq 0
  end

  it 'initializes with an empty log' do
    expect(account.log).to eq []
  end

  describe '#deposit' do

    it 'updates the balance when you deposit' do
      account.deposit(100)
      expect(account.balance).to eq 100
    end

    it 'does not let you deposit an invalid amount of money (not an int)' do
      expect{account.deposit('String')}.to raise_error 'invalid input!'
    end

    it 'does not let you deposit an invalid amount of money (more than 2 dp)' do
      expect{account.deposit(100.123)}.to raise_error 'invalid input!'
    end

  end

  describe '#withdraw' do

    it 'updates the balance when you withdraw' do
      account.deposit(100)
      account.withdraw(75)
      expect(account.balance).to eq 25
    end

    it 'will throw an error when you have insufficient funds when you try and withdraw' do
      account.deposit(100)
      expect{account.withdraw(700)}.to raise_error 'insufficient funds!'
    end

    it 'does not let you withdraw an invalid amount of money (not an int)' do
      expect{account.withdraw('String')}.to raise_error 'invalid input!'
    end

    it 'does not let you withdraw an invalid amount of money (more than 2 dp)' do
      account.deposit(1000)
      expect{account.withdraw(100.123)}.to raise_error 'invalid input!'
    end

  end

  describe '#view' do

    it 'calls a view method on the printer class and passes it the log' do
      expect(printer).to receive(:view_log).with(account.log)
      account.view(printer_class.new)
    end

  end

end

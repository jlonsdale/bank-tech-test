require 'bank_history'

describe BankHistory do

  subject(:bank_history) {described_class.new(action:'credit',amount:500,balance:1000)}

  it 'initializes with a date' do
    allow(Time).to receive(:now).and_return(Time.mktime(2000,"jan",1))
    expect(bank_history.date).to eq "01/01/2000"
  end

  it 'initializes with a balance' do
    expect(subject.balance).to eq 1000
  end

  it 'initializes with an amount' do
    expect(subject.amount).to eq 500
  end

  it 'initializes with an action' do
    expect(subject.action).to eq 'credit'
  end

end

require 'bank_printer'
describe BankPrinter do
  let(:withdraw) { double :withdraw, date: Time.mktime(2000, 'jan', 1), action: 'debit', amount: 0, balance: 0 }
  let(:deposit) { double :withdraw, date: Time.mktime(2000, 'jan', 2), action: 'credit', amount: 0, balance: 0 }

  it 'prints a bank statement' do
    expect(subject.view_log([withdraw, deposit])).to eq '|| date || credit || debit || balance ||' +
    "\n" + '01/01/2000 || || 0.00 || 0.00' +
    "\n" + '02/01/2000 || 0.00 || || 0.00' + "\n"
  end
end

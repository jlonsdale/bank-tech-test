require_relative 'bank_account'

my_account = BankAccount.new
my_account.deposit(1000.99)
my_account.withdraw(500)
my_account.view

# Setup

  🔴Clone this repo

  🔴run bundle install

  🔴run tests with command rspec

  🔴run program with command ruby lib/bank_account

  🔴create a new account with my_account = BankAccount.new

  🔴now you are able to run all commands on your BankAccount, such as: .deposit, .withdraw and .view'

# Plan

## Object Creation

  🔴BankAccount object ➡️ Handles withdrawing money, depositing money and storing the history of actions

  methods:
  - .deposit(amount)
  - .withdraw(amount)
  - .view

  🔴BankHistory object ➡️ Represents a single action of the user, stores date and details about the action

  🔴BankPrinter object ➡️ Handles printing the bank details in a pleasing format

## Edge Cases

  🔴Deposit or withdraw a non-int or non-float i.e.
    account.withdraw('String')

  🔴Deposit or withdraw a float with an incompatible number of decimal places i.e.
    account.deposit('123.456')

  🔴Cannot withdraw more than what you have in your account (insufficient funds)

## Technologies Used

  🔴gem 'rspec' for testing framework

  🔴gem 'simplecov' for test coverage checking

  🔴gem 'rubocop' for static code analyzer (a.k.a. linter)

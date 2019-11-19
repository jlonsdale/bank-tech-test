# Setup

  🔴Clone this repo

  🔴run bundle install

  🔴run tests with command rspec

  🔴run irb
  
  🔴require_relative 'lib/bank_account.rb'
  
  

  🔴create a new account with my_account = BankAccount.new

  🔴now you are able to run all commands on your BankAccount, such as: .deposit, .withdraw and .view'

# Plan

## Object Creation

  🔴BankAccount object ➡️ Handles withdrawing money, depositing money and storing the history of actions

  methods:
  - .new (take no arguments)
  - .deposit(amount)
  - .withdraw(amount)
  - .view

  🔴BankHistory object ➡️ Represents a single action of the user, stores date and details about the action

  methods:
  - .new(action, amount, balance)
      - action : a string that represents if the action is 'credit' or 'debit'
      - amount : the numerical amount for the action
      - balance : the total balance after the action has taken place

  🔴BankPrinter object ➡️ Handles printing the bank details in a pleasing format

  methods:
  - .view_log(array) where array is an array of BankHistory objects

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

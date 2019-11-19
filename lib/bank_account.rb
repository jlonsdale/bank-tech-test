require_relative 'bank_history'
require_relative 'bank_printer'
# BankAccount object
# Handles withdrawing money, depositing money and storing the history of actions
class BankAccount
  attr_reader :log, :balance

  def initialize(bank_history_class = BankHistory)
    @balance = 0
    @bank_history_class = bank_history_class
    @log = []
  end

  def deposit(amount)
    raise 'invalid input!' if invalid_input?(amount)
    @balance += amount
    record_action('credit', amount)
  end

  def withdraw(amount)
    raise 'invalid input!' if invalid_input?(amount)
    raise 'insufficient funds!' if insufficient_funds?(amount)
    @balance -= amount
    record_action('debit', amount)
  end

  def view(bank_printer = BankPrinter.new)
    print bank_printer.view_log(@log)
  end

  private
  
  def record_action(action, amount)
    bank_action = @bank_history_class.new(action: action, amount: amount, balance: @balance)
    @log.push(bank_action)
  end

  def invalid_input?(amount)
    return true if
    (amount.class != Integer) && (amount.class != Float) ||
    (amount.class == Float) && (amount.to_s.split('.')[1].length > 2)
  end

  def insufficient_funds?(amount)
    return true if (amount > @balance)
  end
end

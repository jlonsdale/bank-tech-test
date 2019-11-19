# BankHistory object
# Represents a single action of the user
class BankHistory
  attr_reader :date, :action, :amount, :balance

  def initialize(action:, amount:, balance:)
    @date = Time.now
    @action = action
    @amount = amount
    @balance = balance
  end
end

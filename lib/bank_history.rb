class BankHistory

  attr_reader :date, :action, :amount, :balance

  def initialize(action:,amount:,balance:)
    @date = Time.now.strftime("%d/%m/%Y")
    @action = action
    @amount = amount
    @balance = balance
  end

end

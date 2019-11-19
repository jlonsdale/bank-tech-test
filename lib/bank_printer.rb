# BankPrinter object
# Handles printing the bank details in a pleasing format
class BankPrinter

  def view_log(array)
    output = '|| date || credit || debit || balance ||' + "\n"
    array.each do |n|
      output += "#{n.date.strftime("%d/%m/%Y")} "
      if n.action == 'credit'
        output += "|| #{sprintf('%0.2f', n.amount)} || || "
      else
        output += "|| || #{sprintf('%0.2f', n.amount)} || "
      end
      output += "#{sprintf('%0.2f', n.balance)}" + "\n"
    end
    output
  end
end

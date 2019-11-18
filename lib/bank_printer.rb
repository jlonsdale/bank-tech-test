class BankPrinter

  def view_log(array)
    output = "|| date || credit || debit || balance ||"+"\n"
    array.each do |n|
      output+="#{n.date} "
      if(n.action=='credit')
        output+="|| #{sprintf("%0.2f",n.amount)} || || "
      else
        output+="|| || #{sprintf("%0.2f",n.amount)} || "
      end
      output+="#{sprintf("%0.2f",n.balance)}"+"\n"
    end
    output
  end
end

class BankPrinter

  def view_log(array)
    output = "|| date || credit || debit || balance ||"+"\n"
    array.each do |n|
      output+="#{n.date} "
      if(n.action=='credit')
        output+="|| #{n.amount} || || "
      else
        output+="|| || #{n.amount} || "
      end
      output+="#{n.balance}"+"\n"
    end
    output
  end
end

class BankTransaction
  def initialize(date, amount, description, account)
    @date = date
    @amount = amount
    @description = description
    @account = account
  end

  attr_accessor :date
  attr_accessor :amount
  attr_accessor :description
  attr_accessor :account

  # def debit?(transaction)
  #   if @transaction < 0
  #     return true
  #   else
  #     return false
  #   end
  # end

  # def credit?(transaction)
  #   if @transaction > 0
  #     return true
  #   else
  #     return false
  # end

  # def summary
  #   #outputted info
  # end
end


#open CSVs
#put CSVs into hash
#loop hash through debit? and credit?
#get and store summary from BankTransaction

#display starting bank accounts
#change accounts based on debits and credits
#display summary of changes
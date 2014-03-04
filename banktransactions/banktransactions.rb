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

def debit?
  if amount < 0
    true
  else
    false
  end
end

# amount < 0 ? true : false

def credit?
  if amount > 0
    true
  else
    false
  end
end

def summary
  if debit? == true
      puts "#{formatter(amount)}   DEBIT   #{date} - #{description} "#make the output include DEBIT
    else
      puts "#{amount}   CREDIT  #{date} - #{description}"#make the output include CREDIT
    end
  end
end
class BankTransaction

attr_reader :date
attr_reader :amount
attr_reader :description
attr_reader :account

 def initialize(date, amount, description, account)
  @date = date
  @amount = amount
  @description = description
  @account = account
end

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
      puts "#{amount.abs}   DEBIT   #{date} - #{description} "#make the output include DEBIT
    else
      puts "#{amount}   CREDIT  #{date} - #{description}"#make the output include CREDIT
    end
  end
end
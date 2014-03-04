require_relative 'banktransactions'
require_relative 'bankaccount'
require 'csv'
require 'pry'
credits_and_debits = []
bank_accounts = []


#BankTransaction.debit?(credits_and_debits[1]['Amount'].to_f)

CSV.foreach('bank_data.csv', headers: true) do |row|
  credits_and_debits << BankTransaction.new(row['Date'],row['Amount'].to_f,row['Description'],row['Account'])
end

binding.pry
credits_and_debits.first.debit?
# credits_and_debits #.each do |row|
#   row['Amount'].debit?

# end

CSV.foreach('balances.csv', headers: true) do |row|
  @bank_accounts << BankAccount.new(row["Account"],row["Balance"])
end

# def formatter(amount)
#   sprintf("$%.2f", amount)
# end
#puts bank_accounts

#open CSVs
#put CSVs into hash
#loop hash through debit? and credit?
#get and store summary from BankTransaction

#display starting bank accounts
#change accounts based on debits and credits
#display summary of changes
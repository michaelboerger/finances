# require_relative 'banktransactions'
# require_relative 'bankaccount'
require 'csv'
credits_and_debits = []
bank_accounts = []

class BankTransaction
  attr_accessor :transaction

  def initialize(transaction)
    @transaction = transaction
  end

  def debit?(transaction)
    if @transaction < 0
      return true
    else
      return false
    end
  end

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

BankTransaction.debit?(credits_and_debits[1]['Amount'].to_f)
# class BankAccount
#   def starting_balance(total)
#     #csv information
#   end

#   def ending_balance
#     #total changes to accounts
#   end

#   def summary
#     #displayed information
#   end
# end

CSV.foreach('bank_data.csv', headers: true) do |row|
  credits_and_debits << row.to_hash
end

credits_and_debits.each do |find|
  puts "#{find['Amount']}"
end

CSV.foreach('balances.csv', headers: true) do |row|
  bank_accounts << row.to_hash
end

#puts bank_accounts

#open CSVs
#put CSVs into hash
#loop hash through debit? and credit?
#get and store summary from BankTransaction

#display starting bank accounts
#change accounts based on debits and credits
#display summary of changes
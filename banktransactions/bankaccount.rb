class BankAccount
  attr_reader :account
  attr_accessor :balance

  def initialize(account,balance)
    @account = account
    @balance = balance
  end

  def starting_balance
    starting_loot
      # puts "#{balance}   #{account}"
      #do we want this to print for each of the bank accounts at the same time?
    #end
  end

  def ending_balance
    #total changes to accounts
  end

  def summary

  end
end

require 'pry'
require 'csv'
require_relative 'bank_transaction'

class BankAccount
  attr_reader :balance_file, :transaction_file, :account_name

  def initialize(balance_file, transaction_file, account_name)
    @balance_file = balance_file
    @transaction_file = transaction_file
    @account_name = account_name
    @transactions = []
    @balances = 0
  end

  def read_initial_balance
    CSV.foreach(balance_file, headers: true) do |row|
      if @account_name == row['Account']
        @balances = row['Balance']
      end
    end
    @balances
  end

  def read_transaction_data
  CSV.foreach(transaction_file, headers: true) do |row|
      if @account_name == row['Account']
        @transactions << BankTransaction.new(row['Date'], row['Amount'], row['Description'], row['Account'])
      end
    end
    @transactions
  end

  def starting_balance
    ib = read_initial_balance
    puts "$#{"%.02f" % ib[0]['Balance']}"
  end


  def summary
    # returns an array of all of the transaction summaries.

  # $29.99   WITHDRAWAL  09/12/2013 - Amazon.com
  # $500.33  DEPOSIT     09/14/2013 - Sales Deposit
  # $35.19   WITHDRAWAL  09/15/2013 - Staples.com
  end



  def current_balance
    # returns the ending balance after all transactions have been processed
  end

end

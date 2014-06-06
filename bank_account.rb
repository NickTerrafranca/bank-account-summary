require 'pry'
require 'csv'
require_relative 'bank_transaction'

class BankAccount
  attr_reader :balance_file, :transaction_file, :account_name

  def initialize(balance_file, transaction_file, account_name)
    @balance_file = balance_file
    @transaction_file = transaction_file
    @account_name = account_name
  end

  def read_initial_balance
    balances = []
    CSV.foreach(balance_file, headers: true) do |row|
      if account_name == row['Account']
        balances << row
      end
    end
    balances
  end

  def read_transaction_data
    transactions = []
    CSV.foreach(transaction_file, headers: true) do |row|
      if account_name == row['Account']
        transactions << row
      end
    end
    transactions
    binding.pry
  end

  # @array_of_transactions
    # Your BankAccount class should have an instance variable that contains an array
    # of its associated BankTransactions.

    def starting_balance
    # returns the starting balance loaded from the file
  end

  def current_balance
    # returns the ending balance after all transactions have been processed
  end

  def summary
    # returns an array of all of the transaction summaries.
  end
end

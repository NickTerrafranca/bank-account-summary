require 'csv'
require_relative 'bank_transaction'

class BankAccount
  attr_reader :balance_file, :transaction_file, :account_name

  def initialize(balance_file, transaction_file, account_name)
    @balance_file = balance_file
    @transaction_file = transaction_file
    @account_name = account_name
    @transactions = []
    @balance = 0
    read_initial_balance
    read_transaction_data
  end

  def read_initial_balance
    CSV.foreach(balance_file, headers: true) do |row|
      if @account_name == row['Account']
        @balance += row['Balance'].to_i
      end
    end
  end

  def read_transaction_data
    CSV.foreach(transaction_file, headers: true) do |row|
      if @account_name == row['Account']
        @transactions << BankTransaction.new(row['Date'], row['Amount'].to_f, row['Description'])
      end
    end
    @transactions
  end

  def starting_balance
    @balance
  end

  def summary
    @transactions.each  { |trans| puts trans.summary }
  end

  def current_balance
    amount = starting_balance
    @transactions.each do |trans|
      amount += trans.amount
    end
    amount
  end
end

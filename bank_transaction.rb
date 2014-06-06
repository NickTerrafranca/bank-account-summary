require 'pry'
require 'csv'
require_relative 'bank_account'

class BankTransaction
  def initialize(date, amount, description, account_name)
    @date = date
    @amount = amount
    @description = description
    @account_name = account_name
  end

  def deposit?
    if @amount > 0
      true
    else
      false
    end
  end

  def summary
    # returns a string describing the transaction
  end
end


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
    if deposit?
      type = 'DEPOSIT'
    else
      type = 'WITHDRAWAL'
    end
    "#{@amount} #{type}, #{@date} - #{@description}"
  end
end


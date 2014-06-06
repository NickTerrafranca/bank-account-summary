class BankTransaction
  attr_reader :date, :amount, :description
  def initialize(date, amount, description)
    @date = date
    @amount = amount
    @description = description
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
    "#{"%.02f" % @amount} #{type}, #{@date} - #{@description}"
  end
end

require_relative 'bank_transaction'
require_relative 'bank_account'
BALANCES = 'balances.csv'
BANK_DATA = 'bank_data.csv'
purchasing_account = BankAccount.new(BALANCES, BANK_DATA, 'Purchasing Account')
business_checking = BankAccount.new(BALANCES, BANK_DATA, 'Business Checking')

puts "\n==== Purchasing Account ===="
puts "Starting Balance: #{'%.02f' % purchasing_account.starting_balance}"
puts "Ending Balance: #{'%.02f' % purchasing_account.current_balance}"
puts "\n==== Summary ===="
purchasing_account.summary
puts "\n==== Business Checking ===="
puts "Starting Balance: #{'%.02f' % business_checking.starting_balance}"
puts "Ending Balance: #{'%.02f' % business_checking.current_balance}"
puts "\n==== Summary ===="
business_checking.summary

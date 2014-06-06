require_relative 'bank_transaction'
require_relative 'bank_account'

# I can load a CSV that contains my starting balances for all of my accounts
# I can load a CSV that contains all of my bank transactions
# For each account, the system outputs my starting balance, ending balance,
#   and transaction history for the account in chronological order.

# BankTransaction
# deposit? that returns true if the transaction was a deposit as opposed to a withdrawal
# summary that returns a string describing the transaction.


# BankAccount
# starting_balance that returns the starting balance loaded from the file
# current_balance that returns the ending balance after all transactions have been processed
# summary that returns an array of all of the transaction summaries.
# Your BankAccount class should have an instance variable that contains an array of its
# associated BankTransactions.

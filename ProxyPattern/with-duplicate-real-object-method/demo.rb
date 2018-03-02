require './account_protection_proxy'
require './bank_account'
require './virtual_account_proxy'

puts 'Account proxy with access control'
real_account = BankAccount.new(10)
proxy_account = AccountProtectionProxy.new(real_account, 'g2')

puts "Total balance: #{proxy_account.balance}"
puts "Depositing 10 tk: #{proxy_account.deposit(10)}"
puts "Withdraw 5 tk: #{proxy_account.withdraw(5)}"
puts "After transaction balance: #{proxy_account.balance}"

puts '-------------DEMO WITH VIRTUAL PROXY-------------------------'

virtual_account_proxy = VirtualAccountProxy.new { BankAccount.new(50) }

puts "Total balance: #{virtual_account_proxy.balance}"
puts "Depositing 10 tk: #{virtual_account_proxy.deposit(10)}"
puts "Withdraw 5 tk: #{virtual_account_proxy.withdraw(5)}"
puts "After transaction balance: #{virtual_account_proxy.balance}"
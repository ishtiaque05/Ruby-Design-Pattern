require './bank_account'
require './account_proxy'
require './account_protection_proxy'
require './virtual_proxy'

puts 'Account proxy using message passing technique'
ap = AccountProxy.new(BankAccount.new(10))

puts "Total balance: #{ap.balance}"
puts "Depositing 30 tk: #{ap.deposit(30)}"
puts "Withdraw 20 tk: #{ap.withdraw(20)}"
puts "After transaction balance: #{ap.balance}"

puts '--------------------DEMO ACCOUNT PROTECTION PROXY-----------------------'
ap = AccountProtectionProxy.new(BankAccount.new(100), 'g2')

puts "Total balance: #{ap.balance}"
puts "Depositing 30 tk: #{ap.deposit(30)}"
puts "Withdraw 20 tk: #{ap.withdraw(20)}"
puts "After transaction balance: #{ap.balance}"

puts '--------------------VIRTUAL PROXY DEMO----------------------------------'

# universal virtual proxy

array = VirtualProxy.new { Array.new }

array << 'hello'
array << 'out'
array << 'there'

puts "The magic of method missing::: Helping in delegation #{array.inspect}"
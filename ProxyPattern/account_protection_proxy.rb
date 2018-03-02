require 'etc'

class AccountProtectionProxy
  def initialize(real_account, owner_name)
  	@subject = real_account
  	@owner_name = owner_name
  end

  def balance
  	check_access
  	return @subject.balance
  end

  def deposit(amount)
  	check_access
  	return @subject.deposit(amount)
  end

  def withdraw(amount)
  	check_access
  	return @subject.withdraw(amount)
  end

  def check_access
  	if Etc.getlogin != @owner_name
  	  raise "Illegal access: #{Etc.getlogin} cannot access account."
  	end
  end
end
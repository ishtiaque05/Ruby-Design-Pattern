class Payroll
  def update( changed_employee )
  	puts "Cut a new check #{ changed_employee.name }!"
  	puts "His salary is now #{ changed_employee.salary }!"
  end
end
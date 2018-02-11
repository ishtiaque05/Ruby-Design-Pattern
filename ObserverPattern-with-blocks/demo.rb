require './employee'
fred = Employee.new('Fred','Programmer', 30000)

fred.add_observer do |changed_employee|
  puts "Cut a new check for #{changed_employee.name}!"
  puts "His salary is now #{changed_employee.salary}!"
end

fred.salary = 35000
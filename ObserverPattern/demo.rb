require './employee'
require './tax'
require './payroll'

fred = Employee.new('Fred', 'Programmer', 30000.0)
payroll = Payroll.new
fred.add_observer( payroll )
fred.salary = 35000.0

tax = Tax.new
fred.add_observer(tax)

fred.salary = 40000.0
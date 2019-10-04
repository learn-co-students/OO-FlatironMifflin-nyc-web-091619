require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
e1 = Employee.new("Employee1", 100000, "Manager 1")
e2 = Employee.new("Employee2", 100000, "Manager 2")
e3 = Employee.new("Employee3", 100000, "Manager 3")
e4 = Employee.new("Employee4", 100000, "Manager 1")
e5 = Employee.new("Employee5", 100, "Manager 1")
e6 = Employee.new("Employee6", 500, "Manager 1")

m1 = Manager.new("Manager 1", "Department 1", 53)
m2 = Manager.new("Manager 2", "Department 2", 53)
m3 = Manager.new("Manager 3", "Department 3", 53)

binding.pry
puts "done"

require_relative "lib/Manager"
require_relative "lib/Employee"
require_relative "lib/HumanResources"
require 'pry'


#Test your code here

m1 = Manager.new("Pam", "Admin", 56)
m2 = Manager.new("Jim", "Sales", 33)
m3 = Manager.new("Kevin", "Research", 67)

e1 = Employee.new("Dylan", 65000)
e2 = Employee.new("Lara", 80000)
e3 = Employee.new("Peter", 45000)

hr1 = HumanResources.new(m1, e1)
hr2 = HumanResources.new(m2, e2)
hr3 = HumanResources.new(m3, e3)
hr4 = HumanResources.new(m3, e1)



binding.pry
puts "done"

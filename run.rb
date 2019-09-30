require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new("Tory", "GI", 42)
m2 = Manager.new("Matt", "endo", 34)
m3 = Manager.new("Matt", "endo", 36)

e1 = Employee.new("Ben", 20000)
e2 = Employee.new("Matt", 40000)
e3 = Employee.new("Matt", 3000)


p e1.manager_name
# binding.pry
puts "done"

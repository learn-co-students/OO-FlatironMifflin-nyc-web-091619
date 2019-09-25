require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
empl1 = Employee.new("Johnny", 100000, "Alexey")
empl2 = Employee.new("Steven", 100999, "Rob")
empl3 = Employee.new("Julia", 150000, "Stella")
empl4 = Employee.new("Rebekka", 110000, "Viktor")
empl5 = Employee.new("Alexa", 99900, "Sam")


manager1 = Manager.new("Alexey", "Stats", 34)
manager2 = Manager.new("Rob", "Marketing", 3)
manager3 = Manager.new("Stella", "IT", 42)
manager4 = Manager.new("Sam", "HR", 23)
manager5 = Manager.new("Viktor", "Radio", 80)
binding.pry
puts "done"

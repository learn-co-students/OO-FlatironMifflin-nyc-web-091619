require_relative "lib/Manager"
require_relative "lib/Employee"
require_relative "lib/Department"
require 'pry'


#Manager class (name, department, age)
altaf = Manager.new("Altaf", "Operations", 38)
nasr = Manager.new("Nasr", "Insurance", 34)
salman = Manager.new("Salman", "Recruiting", 32)

#Employee class (name, salary)
anthony = Employee.new("Anthony", 75000)
jonathon = Employee.new("Jonathon", 74000)
mustafa = Employee.new("Mustafa", 73000)


#Department class (manager, employee)
operations = Department.new(altaf, jonathon)
insurance = Department.new(nasr, anthony)
recruiting = Department.new(salman, mustafa)
insurance = Department.new(nasr, jonathon)


#Manager Methods
altaf.my_department
nasr.employees
salman.hire_employee("Peter", 38000)
Manager.all_departments
Manager.average_age



#Employee Methods
mustafa.my_department
mustafa.manager_name
Employee.paid_over(40000)
Employee.find_by_department("Insurance")
p mustafa.tax_bracket
#binding.pry
puts "done"

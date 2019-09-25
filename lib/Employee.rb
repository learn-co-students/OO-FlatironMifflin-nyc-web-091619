class Employee
    attr_accessor :salary
    attr_reader :name

    @@all = []

    def initialize(name, salary)
        @name = name
        @salary = salary
        @@all << self
    end

    def my_department
        Department.all.select{|department| department.employee == self}
    end

    def manager_name
        my_department.map{|department|department.manager.name}
    end

    def Employee.paid_over(num)
       self.all.select{|employee|employee.salary > num} 
    end

    def Employee.find_by_department(dept)
        employee = ""
        find_manager = Manager.all.find do |manager|
            manager.department == dept
        end
        find_manager
            Department.all.select do |manager|
                if manager.manager == find_manager
                    employee = manager.employee
                end
            end
        employee
    end

    def tax_bracket
        Employee.all.select{|employee|employee.salary <= self.salary + 1000 && employee.salary >= self.salary - 1000 && employee !=self}
    end

    def self.all
        @@all
    end
end








#Completed 
# **`Employee`**
#   * `Employee#name`
#     * returns a `String` that is the employee's name
#   * `Employee#salary`
#     * returns a `Fixnum` that is the employee's salary
#   * `Employee.all`
#     * returns an `Array` of all the employees
#   * `Employee#manager_name`
#     * returns a `String` that is the name of their manager
#   * `Employee.paid_over`
#     * takes a `Fixnum` argument and returns an `Array` of all the employees whose salaries are over that amount
#   * `Employee.find_by_department`
#     * takes a `String` argument that is the name of a department and returns the first employee whose manager is working in that department
#   * `Employee#tax_bracket`
#     * returns an `Array` of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method
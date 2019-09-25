class Manager
    attr_accessor
    attr_reader :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def my_department
        Department.all.select{|department|department.manager == self}
    end

    def employees
        my_department.map{|department|department.employee}
    end

    def hire_employee(name, salary)
        Department.new(self, Employee.new(name, salary))
    end

    def Manager.all_departments
        Department.all.map{|departments|departments.manager.department}.uniq
    end

    def self.all
        @@all
    end

    def Manager.average_age
        Department.all.map{|departments|departments.manager.age}.uniq
            .inject{|sum, n| sum + n}/Department.all.map{|departments|departments.manager.age}.uniq.count.to_f
    end

end







#Completed
# **`Manager`**
#   * `Manager#name
#     * returns a `String` that is the manager's name
#   * `Manager#department`
#     * returns a `String` that is the department that the manager oversees
#   * `Manager#age`
#     * returns a `Fixnum` that is the age of the manager
#   * `Manager.all`
#     * returns an `Array` of all the managers
#   * `Manager#employees`
#     * returns an `Array` of all the employees that the manager oversees
#   * `Manager#hire_employee`
#     * takes a `String` argument and a `Fixnum` argument of an employee's name and the employee's salary, respectively, and adds that employee to the list of employees that the manager oversees
#   * `Manager.all_departments`
#     * returns an `Array` of all the department names that every manager oversees
#   * `Manager.average_age`
#     * returns a `Float` that is the average age of all the managers
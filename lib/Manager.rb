class Manager

    attr_accessor :name, :department, :age
    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    # * `Manager#employees`
    # * returns an `Array` of all the employees that the manager oversees
    def employees
        HumanResources.all.select do |manager|
            manager.manager.name == self.name
        end
    end
    
    #   * `Manager#hire_employee`
    #     * takes a `String` argument and a `Fixnum` argument of an employee's name and the employee's salary, respectively, and adds that employee to the list of employees that the manager oversees

    def hire_employee(name, salary)
        new_employee = Employee.new(name, salary)
        HumanResources.new(new_employee, self)

    end


    #   * `Manager.all_departments`
    #     * returns an `Array` of all the department names that every manager oversees
    
    def all_departments
        HumanResources.all.select do |manager|
            manager.manager.department == self.department
        end
    end
    
    
    
    #   * `Manager.average_age`
    # * returns a `Float` that is the average age of all the managers

    def average_age

    end



end #End of Manager class





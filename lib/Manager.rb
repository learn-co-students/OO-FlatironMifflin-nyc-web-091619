class Manager
    attr_reader :name, :department, :age
    
    def initialize
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select do |employee|
            employee.manager_name == self.name
        end
    end

    def hire_employee(employee_name, salary)
        Employee.new(employee_name, salary, self.name)
    end

    def self.all_departments
        array = []
        # get all managers
        # iterate and add their name/department to array
        # return array
    end

    def self.average_age
        # get all manager objects
        # iterate through and create array of ages
        # arr.inject { |sum, el| sum + el }.to_f / arr.size
    end
end

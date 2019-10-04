class Manager
    attr_accessor :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @age = age
        @department = department
        @@all << self
    end

    def employees
        Employee.all.select {|employee| employee.manager_name == name}
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self.name)
    end

    def self.all_departments
        all.map {|manager| manager.department}.uniq
    end

    def self.average_age
        all.reduce(0) {|sum, manager| manager.age + sum} / all.size
    end

    def self.all
        @@all
    end

end

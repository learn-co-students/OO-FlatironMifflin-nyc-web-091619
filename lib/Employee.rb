class Employee
    attr_reader :name
    attr_accessor :salary, :manager_name

    @@all = []

    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end

    def self.all 
        @@all
    end

    def self.paid_over(salary)
        self.all.select{|empl| empl.salary > salary}
    end

    def self.find_by_department(dept_name)
        dept_manager = Manager.all.find{|manager| manager.department == dept_name}
        self.all.select{|empl| empl if empl.manager_name == dept_manager.name}
    end

    def tax_bracket
        Employee.all.select{|empl| empl.salary < self.salary + 1000 and empl.salary > self.salary - 1000 and empl != self}
    end
end

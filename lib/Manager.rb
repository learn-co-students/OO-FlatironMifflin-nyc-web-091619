class Manager
    attr_reader :name 
    attr_accessor :age, :department, :employee

    @@all = []
    @@departments = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @@departments << department
        @age = age
        @employees = []
        @@all << self
    end


    def self.all
        @@all
    end

    def employees
        @employees
    end

    def hire_employee(name, salary)
        employee = Employee.new(name, salary)
        employees << employee
    end

    def self.all_departments
        @@departments
    end

    def self.average_age
       ages = Manager.all.map do |manager|
            manager.age 
            
        end
        ages.inject{|sum, n| sum + n}/ Manager.all.count
        
    end
        
    

    






end #end of class

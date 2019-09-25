class Manager
    attr_reader :name
    attr_accessor :department, :age, :employees

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @employees = []
        @@all << self
    end

    def self.all
        @@all
    end
    
    def hire_employee(name, salary)
        @employees << Employee.new(name, salary, self)
    end

    def self.all_departments
        self.all.each{|manager| puts manager.department}
    end

    def self.average_age
        sum = 0
        all_the_age = self.all.map{|manager| manager.age}
        sum = all_the_age.inject{|sum, n| sum + n}
        avg = (sum/all_the_age.length.to_f).round(2)
    end
end

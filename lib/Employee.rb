class Employee
    attr_reader :name, :salary, :manager_name
    
    def initialize
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(amount)
        self.all.select do |employee|
            employee.salary > amount
        end
    end

    def self.find_by_department(string)
        # get Manager.all_departments
        # iterate through and get all managers whose department matches string
        # get employees of those manager
        # return first
    end

    def tax_bracket
        # call self.paid_over using self.salary as the amount argument
    end
    
            



end

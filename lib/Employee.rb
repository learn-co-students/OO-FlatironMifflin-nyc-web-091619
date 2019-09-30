class Employee
    attr_reader :name
    attr_accessor :salary

    @@all = []

    def initialize(name, salary)
        @name = name
        @salary = salary
        @@all << self
    end

    def self.all
        @@all
    end

    def manager_name
        Manager.all.select do |manager|
            manager.employee == self 
            binding.pry
        end
    end



end # end of class


class HumanResources

    attr_accessor :employee, :manager, :salary, :department

    @@all = []

    def initialize(manager, employee)
        @employee = employee
        @manager = manager
        @salary = salary
        @department = department
        @@all << self
    end

    def self.all
        @@all
    end


end

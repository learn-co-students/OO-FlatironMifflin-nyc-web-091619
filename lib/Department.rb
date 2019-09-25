class Department
    attr_accessor
    attr_reader :manager, :employee

    @@all = []

    def initialize(manager, employee)
        @manager = manager
        @employee = employee
        @@all << self
    end

    def self.all
        @@all
    end
end
class Employee
    attr_accessor :salary, :name, :manager_name

    @@all = []

    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end

    def tax_bracket
        Employee.all.select do |employee|
            employee != self && (salary - 1000) <= employee.salary && employee.salary  <= (salary + 1000)
        end
    end

    # def find_my_manager
    #     Manager.all.find {|manager| manager.name == manager_name}
    # end

    def self.find_by_department(department)
        managers = Manager.all.select{|manager| manager.department == department}
        managers.map do |manager|
            all.select {|employee| employee.manager_name == manager.name}
        end.flatten.uniq
    end

    def self.paid_over(amount)
        all.select {|employee| employee.salary > amount}
    end

    def self.all
        @@all
    end

end

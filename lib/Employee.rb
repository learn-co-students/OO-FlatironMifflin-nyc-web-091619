class Employee

    attr_accessor :name, :salary

    @@all = []

    def initialize(name, salary)
        @name = name
        @salary = salary
        @@all << self
    end

    def self.all
        @@all
    end
    

    # * `Employee#manager_name`
    # * returns a `String` that is the name of their manager
    # def manager_name
    #     Manager.all.map do ||

    # end


end #End of Employee class






# * `Employee.paid_over`
# * takes a `Fixnum` argument and returns an `Array` of all the employees whose salaries are over that amount
# * `Employee.find_by_department`
# * takes a `String` argument that is the name of a department and returns the first employee whose manager is working in that department
# * `Employee#tax_bracket`
# * returns an `Array` of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method
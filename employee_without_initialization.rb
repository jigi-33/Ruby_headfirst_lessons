#!/usr/bin/env ruby

# frozen_string_literal: true
# Description: Инициализация экземпляров. Пример без инициализации.
# Author:      jigick

class Employee
    attr_reader :name, :salary

    def initialize
        puts "Setting up new instance!"  # the simplest example of initialize
    end

    def name=(name)

        if name == ""
            raise "Name can't be blank!"
        end
        @name = name
    end
    def salary=(salary)
        if salary < 0
            raise "A salary of #{salary} isn't valid!"
        end
            @salary = salary
    end
    def print_pay_stub
        puts "Name: #{@name}, Salary: #{@salary}"
        p @name, @salary # inspected
        pay_for_period = (@salary.to_f / 365.0) * 14
        puts format('Pay This Period: $ %0.2f', pay_for_period) # float output formatting inside the strings
    end

end

amy = Employee.new
amy.name = "Amy Blake"
amy.salary = 50000

amy.print_pay_stub

kara = Employee.new
kara.name = "Kara Byrd"
kara.salary = 45000

kara.print_pay_stub

kirill = Employee.new
kirill.print_pay_stub

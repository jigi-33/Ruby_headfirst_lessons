#!/usr/bin/env ruby

# Description: Инициализация экземпляров. Простой пример с инициализацией
# Author:      jigick

class Employee
    attr_reader :name, :salary
    def initialize(name='Anonymous', salary=1.0)
        self.name = name # ОДНОЗНАЧНО вызывается метод «name=», в initialize лучше делать именно так,
        self.salary = salary # ОДНОЗНАЧНО вызывается метод «salary=», в initialize лучше делать именно так!
    end
    def name=(name)
        if name == ""
            raise "Name can't be blank!!!"
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
        puts "Name: #{self.name}"
        pay_for_period = (self.salary / 365.0) * 14
        formatted_pay = format("$%.2f", pay_for_period)
        puts "Payment This Period: #{formatted_pay}"
    end
end


new_employee = Employee.new('NEWCOMER')
new_employee.print_pay_stub

real_employee = Employee.new('Afanasy', 10000)
real_employee.print_pay_stub

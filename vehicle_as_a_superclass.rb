#!/usr/bin/env ruby

# frozen_string_literal: true

# Description: Vehicle super-class and inheritance in sub-classes
# Author:      jigick

class Vehicle
    attr_accessor :odometer
    attr_accessor :gas_used

    def accelerate
        puts "Floor it!"
    end

    def sound_horn
        puts "Beep! Beep!"
    end

    def steer
        puts "Turn front TWO wheels!"
    end

    def mileage
        return @odometer / @gas_used
    end
end

=begin
Наследование субклассов от суперкласса:
=end

class Car < Vehicle
end

class Truck < Vehicle

    attr_accessor :cargo  # new specific attribute

    def load_bed(contents) # new specific method
        puts "Securing #{contents} in the truck bed."
        @cargo = contents
    end
end


class Motorcycle < Vehicle

    def steer
        # Overridden method. RubyMine show it as a special marker near line number bar.
        puts "Turn ONE front wheel"
    end
end


truck = Truck.new

truck.accelerate
truck.steer

puts truck.odometer

truck.load_bed("259 bouncy balls")
puts "The truck is carrying #{truck.cargo}. Rather good!"

truck.odometer = 24369
truck.gas_used = 634
puts "Average trucks MPG:"
puts truck.mileage

puts '=' * 54

car = Car.new
car.odometer = 11432
car.gas_used = 366

puts "Lifetime car's MPG:"
puts car.mileage

puts '====================================='

motorcycle = Motorcycle.new
motorcycle.steer

motorcycle.accelerate

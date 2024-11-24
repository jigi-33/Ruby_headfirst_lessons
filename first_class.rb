#!/usr/bin/env ruby

# frozen_string_literal: true

# Description: Classes for animals
# Author:      jigick


class Dog

    # attr_accessor :name, :age  # Perfect substitution (public accessors)  УВЫ... мы разобъём акцессоров на составные части)

    attr_reader :name, :age

    # а на сеттеры выставим проверки:

    def name=(value)
        if value == ""
            # puts "Name can't be blank!"
            raise "Name can't be blank!"
        end

        @name = value
    end

    def age=(value)
        if value <= 0
            # puts "An age of #{value} isn't valid!"
            raise "An age of #{value} isn't valid!"
        end

        @age = value
    end

=begin
    def name=(new_value)
        # setter is harder than writer or an accessor
        @name = new_value
    end

    def name
        # getter is harder than writer or an accessor
        @name
    end

    def age=(new_value)
        # setter is harder than writer or an accessor
        @age = new_value
    end

    def age
        # getter is harder than writer or an accessor
        @age
    end

=end

    def report_age
        puts "#{@name} is #{@age} years old"
    end

    def talk
        puts "#{@name} says: 'Bark!'"
    end

    def move(destination)
        puts "#{@name} running to the #{destination}."
    end
end


class Bird
    def talk(name)
        puts "#{name} says: 'Chirp! Chirp!'"
    end

    def move(name, destination)
        puts "#{name} flying to the #{destination}."
    end
end


class Cat
    def talk(name)
        puts "The cat #{name} says: 'Meow!'"
    end

    def move(name, destination)
        puts "#{name} runs to the #{destination}."
    end
end



# fido = Dog.new
# rex = Dog.new
# fido.talk
# rex.move("food bowl")
# puts "=" * 30

bird = Bird.new
dog = Dog.new
cat = Cat.new

dog.talk
dog.move("food bowl")

bird.talk("Satori")
bird.move("Satori", "tree")

cat.talk("Fetishistic")
cat.move("Fetishistic", "house")

puts "=" * 30

fido = Dog.new
fido.name = "Fido"
fido.age = 2

rex = Dog.new
rex.name = "Rexx"
rex.age = 3

fido.report_age
rex.report_age

puts "=" * 35

daisy_dog = Dog.new

daisy_dog.name = "Daisy"
daisy_dog.age = 1

daisy_dog.report_age
daisy_dog.talk

daisy_dog.move("bed")

puts daisy_dog.age

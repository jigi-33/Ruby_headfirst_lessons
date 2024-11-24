#!/usr/bin/env ruby

# frozen_string_literal: true

# Description: Modern Fuzzy Friends implementation
# Author:      jigick

class Animal

    attr_reader :name, :age  # Создает методы для получения текущих значений @name и @age

=begin
создаем собственные методы записи атрибутов, чтобы проверить новые значения на действительность:
=end

    def name=(value)
        if value == ""
            raise "Name can't be blank!"
        end
        @name = value
    end

    def age=(value)
        if value <= 0
            raise "An age of #{value} isn't valid!"
        end
        @age = value
    end

    # Другие методы экземпляра для объектов Dog:

    def talk
        puts "#{@name} says Bark!"
    end

    def move(destination)
        puts "#{@name} runs to the #{destination}."
    end

    def report_age
        puts "#{@name} is #{@age} years old."
    end
end



class Dog < Animal
end


class Cat < Animal
    def talk
        puts "#{@name} says Meow!"
    end
end

class Bird < Animal
    def talk
        puts "#{@name} says Chirp! Chirip!"
    end
end


class Armadillo < Animal
    def move(destination)
        puts "#{@name} unrolls!"
        super(destination) # Сила ключевого слова SUPER с явно указанным аргументом
    end
end



whisky = Cat.new
whisky.name = "Whisky"

fido = Dog.new
fido.name = "Fido"

polly = Bird.new
polly.name = "Polly"
polly.age = 2
polly.report_age


fido.move("yard")

whisky.talk
polly.talk

dillon = Armadillo.new
dillon.name = "Dillon the bronik"
dillon.age = 2

dillon.move("burrow")

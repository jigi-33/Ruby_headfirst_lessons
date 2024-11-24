#!/usr/bin/env ruby

# frozen_string_literal: true

# Description: Classes getters and setters for attributes
# Author:      jigick

class MyClass
    def my_attribute=(new_value)
        # the setter
        @my_attribute = new_value
    end

    def my_attribute
        # the getter
        @my_attribute
    end
end


my_instance = MyClass.new
my_instance.my_attribute = "assigned via method call"
puts my_instance.my_attribute

puts("=======================")

my_instance.my_attribute=("same here!")
=begin                  ^^^^^^^^^^^^^^^
Альтернативный способ вызова методов записи атрибута приводится только для того, чтобы вы поняли, что происходит
«за кулисами». В настоящих программах на Ruby следует использовать только "классичейский" синтаксис с присваиванием!
=end

puts my_instance.my_attribute

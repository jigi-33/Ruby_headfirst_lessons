#!/usr/bin/env ruby

# frozen_string_literal: true

# Description: progressive Mage class
# Author:      jigick

class Mage
    attr_accessor :name, :spell

    def enchant(target)
        puts "#{@name} casts #{@spell} on #{target.name}!"
    end
end

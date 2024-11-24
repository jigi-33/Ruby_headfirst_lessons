#!/usr/bin/env ruby

# Description: Get My Number game
# Author:      jigick

puts "Welcome to 'Get My Number!'"
print "What's your name? "

input = gets # get string

name = input.chomp

puts "Welcome, #{name}!"

puts "I've got a random number between 1 and 10."
puts "Can you guess it?"
target = rand(10) + 1

num_guesses = 0
guessed_it = false

until num_guesses == 10 || guessed_it

    puts "You've got #{10 - num_guesses} guesses left."

    print "Make a guess: "
    guess = gets.to_i

    num_guesses += 1

    if guess < target
        puts "Oops. Your guess was LOW."
    elsif guess > target
        puts "Oops. Your guess was HIGH."
    elsif guess == target
        puts "Good job, #{name}!"
        puts "You guessed my number in #{num_guesses} guesses!"
        guessed_it = true
    end
end

unless guessed_it # if not guessed_it == true
    puts "Sorry. You didn't get my number. (It was #{target}.)"
end

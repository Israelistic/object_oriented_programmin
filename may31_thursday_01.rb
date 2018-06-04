#!/usr/bin/env ruby
# Exercise 1
=begin
Define a method that accepts a list of numbers as an
 argument and returns the sum of the odd numbers in the list.
=end


    num_list =[2,4,6,8,9,11,33,55,20,60]

    def odd(num_list)
        odd_list =[]
        num_list.each do |num|
            if  num.even? == false
                odd_list << num
            end
        end
        return odd_list
    end

p odd(num_list)

# Exercise 2
=begin
Pick three names and store them in an array.

Prompt the user to enter their name.
 If their name is one of the names in the array,
 display a greeting message that includes their name.
 If their name isn't in the list, display "Who goes there
=end
    def registered_usr
        name_arry =[ "david", "haggai", "mark"]
        return name_arry
    end

    def user_check(name)
        your_name = name

        if registered_usr.include?(your_name) == true
            p "greeting #{your_name}"
        else
            p "Who goes there?"
        end
    end
puts "enter you name:"
name  = gets.chop
  user_check(name)

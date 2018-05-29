#!/usr/bin/env ruby
class Cat

    def initialize(name, preferred_food, meal_time)
        @name = name
        @preferred_food  = preferred_food
        @meal_time = meal_time
    end
    def eat_at
        return @meal_time
    end
    def meow
        return "My name is #{@name} and I eat #{@preferred_food} at: #{@meal_time}"
    end

end

cat1 = Cat.new("Mitzi", "tuna", 6)
p cat1.meow

cat2 = Cat.new("Tiger", "herring", 7)
p cat2.meow

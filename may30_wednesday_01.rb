#!/usr/bin/env ruby
=begin
Exercise 1
Create an emotions hash, where the keys are the names of different
 human emotions and the values are the degree to which the emotion
 is being felt on a scale from 1 to 3.
=end
class Person
    @@human_emotions ={
    happines: rand(1..3),
    fear: rand(1..3),
    anger: rand(1..3),
    sadness: rand(1..3)
    }
=begin
Write a Person class with the following characteristics:
name (string)
emotions (hash)
Initialize an instance of Person using your emotions hash from exercise 1
=end

    def initialize(name)
        @name = name
        @emotion = @@human_emotions
    end
=begin
Add an instance method to your class that displays a message
describing how the person is feeling. Substitute the words
 "high", "medium", and "low" for the emotion levels 1, 2, and 3.
=end
    def feeling

        @emotion.each do | emotion, degree|
            if degree === 1
                p "I am feeling low amount of #{emotion}"
            elsif degree == 2
                p "I am feeling medium amount of #{emotion}"
            elsif degree == 3
                p "I am feeling high amount of #{emotion}"
            end
        end


    end

end

p tommy= Person.new("Tommy")
p tommy.feeling

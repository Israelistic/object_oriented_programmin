#!/usr/bin/env ruby


class Person

    def initialize(name)
        @name = name
    end

    def greeting
          p "Hi, my name is #{@name}"
    end
end

class Student < Person

    def learn
        return "I get it"
    end
end



class Instructor < Person

    def teach
        return "Everythin in Ruby is an Object"
    end

end


 p nadia = Instructor.new("nadia")

  nadia.greeting
p chris = Student.new("Chris")

p

# p chris.teach # the student class is not inheritance.
#the parent class have to be placed at the top of the filke in order for ruby to work 

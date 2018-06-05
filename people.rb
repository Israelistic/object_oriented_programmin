#!/usr/bin/env ruby
class Student

    def learn
        return "I get it"
    end

end


class instructor
    def teach
        return "Everythin in Ruby is an Object"
    end

end

class Person

    def initialize(name)
        @name = name
    end
    def greeting(name)
        p "Hi, my name is #{name}".
    end
end

#!/bin/env ruby
class System
    @@bodies = []
    def add(body)
        @body_list = []
        @body_list << body
    end
    def total_mass(mass)
        @@bodies << mass
        return @bodies
    end
end
class Body
    def initilaize(name, mass)
        @name = name
        @mass = mass
    end
end
class Planet < Body
    def initilaize(hours, days)
        @day = hours #hours it takes for the planet to rotate all the way around once.
        @year = days #number of days it takes for the planet to orbit the sun once.
    end
end
class Star < Body
    def initilaize(type)
        @type = type #(ie. our Sun is a G-type star)
    end
end
class Moon < Body
    def initilaize(days, planet)
        @month = days #number of days it takes for the moon to orbit its planet.
        @planet = planet # planets that they orbit. as an object
    end
end

sun = Star.new("G-type")

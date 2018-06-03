#!/usr/bin/env ruby
require 'pry'

# @@daytime =['sunset','sunrise']

class Vampire
    @@coven =[]

    def initialize(name, age)
        @name = name
        @age  = age
        @in_coffin = true
        @drank_blood_today = false
    end

    #READERS
    def self.in_coven
        return @@coven
    end
    def incoffin?
        return @in_coffin
    end
    def drinkblood?
        @drank_blood_today
    end
    #WRITERS
    def go_home
        @in_coffin = true
    end
    def drink_blood
        @drank_blood_today = true
        return
    end

    def self.create(name, age)
        each_vampire = self.new(name, age)
        @@coven << each_vampire
        return each_vampire
    end
    def self.sunrise # this will check who from the vampire didnt drank blood last day. meaning died
        @@coven.each do | vampire |
            if (vampire.incoffin? == true && vampire.drinkblood? == false )
                @@coven.delete(vampire)

            end
        end
    end
    def self.sunset
        @@coven.each do | vampire |
            @drank_blood_today = false
            @in_coffin = false
        end
    end
end
# binding.pry
p drakula = Vampire.create("dodo",99)
p draka = Vampire.create("draka",145)
p draku = Vampire.create("draku",200)
puts
puts "==check whos in the coven=="
puts
p Vampire.in_coven
puts
puts
p "====sunset==="
Vampire.sunset
puts
puts
p "===each vampire will drink blood now==="
drakula.drink_blood
draka.drink_blood
puts
puts
puts "checks if the vampire drank blood"
puts
puts drakula.drinkblood?
puts
puts
puts draka.drinkblood?
puts
puts
puts draku.drinkblood?
puts
puts "sunrise in the horizen!.quick go back to coffin"
puts
puts
puts "each vampire will go home  to his coffin"
drakula.go_home
draka.go_home
draku.go_home
puts
puts
puts
puts drakula.incoffin?
puts draka.incoffin?
puts draku.incoffin?
puts
puts
Vampire.sunrise
puts
puts
puts
p Vampire.in_coven
puts
puts "it seems that draka didnt survived since he didnt drink blood"

#!/usr/bin/env ruby
 require "pry"
class Zombie
# class variable
@@horde = [] # contain the collection of all zombies.
@@plague_level = 10 # value will increase. used to determine the rate at which new zombies are spawned.
@@max_speed = 5#indicates the maximum value for the speed attribute of any zombie. this value wont change
@@max_strength = 8# this value wont change
@@default_speed = 1# this value wont change
@@default_strength = 3 # this value wont change
    def initialize(speed, strength)


        if (speed > @@max_speed)
                @zomibes_speed = @@default_speed

        else (speed <= @@max_speed)
                @zomibes_speed = speed
        end

        if (strength >= @@max_strength)
                @zombies_strength = @@default_strength
        else
                @zombies_strength = strength

        end

    end

    def encounter
         if (outrun_zombie? == true )
             return p "You outran the zombie and get to live another day."

        else (outrun_zombie? == false)
            return p "Why I feel so sick....oh nooooo. you turned into a zombie"
            @@horde << self.new(rand(@@max_speed), rand(@@max_strength))
        end
        if  (survive_attack? == true )
            p "You survived today, see you tommorow"
        else

            @@horde << self.new(rand(@@max_speed), rand(@@max_strength))
            return p "Why I feel so sick....oh nooooo. you turned into a zombie"
        end
    end

    def outrun_zombie?
        ranspeed = rand(@@max_speed) #enerate a random number that represents how fast you manage to run from this particular zombie
        if (ranspeed  > @zomibes_speed)
            return true
        else
            return false
        end
    end

    def survive_attack?
        your_strength = rand(@@max_strength) #enerate a random number that represents how well you are able to fight off this zombie.
        if (your_strength > @zombies_strength)#return true if your strength is greater than the zombie's and false otherwise.
            return true
        else
            return false
        end
    end

    def self.all
        return @@horde
    end

    def self.new_day
        self.some_die_off
        self.spawn
        self.increase_plague_level
    end

    def self.some_die_off
         randnum = rand(0..10)
         @@horde.delete(randnum)
    # rand(0..10).times do
    #     @@horde.pop

    end

    def self.spawn
         rand(@@plague_level).times do
        @@horde << self.new(rand(@@max_speed), rand(@@max_strength))
        end
    end

    def self.increase_plague_level
        @@plague_level += rand(0..2)
        # return @@plague_level #assigned for test
    end



end

p Zombie.all.inspect
p Zombie.new_day
p Zombie.all.inspect
zombie1 = Zombie.all[0]
zombie2 = Zombie.all[1]
zombie3 = Zombie.all[2]
if zombie1
    p zombie1.encounter
end
if zombie2 then p zombie2.encounter end
p zombie3.encounter if zombie3
# Zombie.new_day
# p Zombie.all.inspect
# zombie1 = Zombie.all[0]
# zombie2 = Zombie.all[1]
# zombie3 = Zombie.all[2]
# p zombie1.encounter
# p zombie2.encounter
# p zombie3.encounter

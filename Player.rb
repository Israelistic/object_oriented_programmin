#!/usr/bin/env ruby
class Player

    def initialize
        @gold_coins = 5
        @health_points = 10
        @lives = 10
    end
    def level_up
        @lives += 1
    end
    def collect_treasure
        @gold_coins += 1
        if (@gold_coins % 10) == 0
            level_up
        end
    end
    def do_battle (damage)
        @health_points -= damage
        if @health_points < 1
           @lives -= 1
           @health_points = 10
           restart
       end
    end
    def restart
        @gold_coins = 5
        @health_points = 10
        @health_points =10
    end




end

p player1 = Player.new
player1.do_battle(5)
p player1
player1.level_up

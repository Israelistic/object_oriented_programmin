#!/usr/bin/env ruby
require 'pry'

class Paperboy

    def initialize(name)
        @name = name
        @experience = 0
        @earnings = 0
        @quota = 50
    end

    def deliver(start_address, end_address)
        delivered = (end_address - start_address)
        @experience += delivered
        today_earning = 0
        today_earning += (delivered * 0.25)

        if delivered > @quota
            over_quota = (delivered - @quota )
            today_earning += (over_quota * 0.25 )

        elsif delivered < @quota
            @earnings -= 2
        end

        @earnings += today_earning
        @quota += (delivered /2)

            return today_earning
    end

    def earnings
        return @earnings
    end

    def  quota
        @quota
    end

    def report
        return "I am #{@name}, I've delivered #{@experience} and I've earned #{@earnings} so far "
    end
end


haggai = Paperboy.new("haggai")

p haggai.quota
p haggai.deliver(10, 20)
p haggai.earnings
p haggai.report

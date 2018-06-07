#!/usr/bin/env ruby

class Task

    def initialize
        @description =""
        @due_date =""
    end
    # reader
    def description
        return @description
    end
    def due_date
        return @due_date
    end

    #Writer
    def description=(desc)
        @description =desc
    end
    def due_date=(due_date)
        @due_date = due_date
    end
end

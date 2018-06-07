#!/usr/bin/env ruby


#Exercise 1
class Task
attr_accessor :due_date, :description
    def initialize(desc, due_date)
        @description = desc
        @due_date = due_date
    end


    #Writer
    def description=(desc)
        @description =desc
    end
    def due_date=(due_date)
        @due_date = due_date
    end
end
#Exercise 2
class TodoList < Task


    def initialize
        @add_task = []
    end
    def add_tasks(add_task)
        @add_task << add_task
    end
    def read_tasks
        return @@add_task
    end
end




p task1 = Task.new("Learn how to work with OOP", 10-06-2018)
p task2 = Task.new("Start SQL code", 07-06-2018)
p task3 = Task.new("keep pushing", 07-06-2018)
p todo = TodoList.new
p todo.add_tasks(task1)
p todo.add_tasks(task2)
p todo.add_tasks(task3)

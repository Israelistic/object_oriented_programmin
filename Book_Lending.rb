#!/usr/bin/env ruby
require "pry"
class Book
# class variable
@@on_shelf =[]
@on_loan =[]
@@lent_out =[]

    def initialize (books_title, author, isbn)
        # instance variable
        @books_title = books_title
        @author = author
        @isbn = isbn
        @due_date = nil
    end
    # self .dot = class methods. else is instance method
    def self.create(books_title, author, isbn)
         bookname = Book.new(books_title, author, isbn)
        @@on_shelf << bookname
        return @@on_shelf[-1]

    end
    def self.current_due_date
        return Time.now + (60 * 60 * 24 * 60)
    end

    def self.overdue_books
        @@on_loan.each do |book|
        if Time.now > book.due_date
            overdue_books << book
        end
        return overdue_books
    end

    def self.browse
        return @@on_shelf.sample
    end

    def self.available
        return @@on_shelf
    end

    def self.borrowed
        return @@on_loan
    end

    def due_date  #reader
        return @due_date
    end
    def due_date=(due_date) #writer
        @due_date = due_date
    end
    def borrow
        if lent_out? == true
            return false
        else
            self.due_date=(Book.current_due_date)
            @@on_shelf.delete(self)
            @@on_loan << self
            return true
        end
    end

    def return_to_library
        if self.lent_out? == true
            @@on_loan.delete(self)
            @@on_loan << self
            self.due_date= (nil)
            return true
        else
            return false
        end
    end
    def lent_out?
            answer = @@on_loan.include?(self)
        return answer

    end


end
The_7Habits = Book.create("The 7 Habits of Highly Effective People",	"Stephen R. Covey", "0-7432-6951-9")
Mans_Search_for_Meaning = Book.create("Man's Search for Meaning","Viktor E. Frankl", "9788425432033")
#puts Book.browse.inspect()
a.Book.create("aa", "bb", "cc")
a.lent_out?

#!/usr/bin/env ruby

class BankAccount

    @@interest_rate = 0.12
    @@accounts =[]

    def initialize
        @balance = 0
    end

    def balance   #reader
        return @balance
    end

    def balace_change(amount)    #writer
        @balance = amount
    end

    def deposit(amount)
        @balance += amount
        return @balance
    end

    def widthraw(amount)
        @balance -= amount
        return @balance
    end

    def self.create
        temp = self.new
        @@accounts << temp
        return @@accounts[-1]
    end

    def self.total_funds
            accounts_totals = 0
        @@accounts.each do |account| # will iterate the array and pull every account
            accounts_totals += account.balance
            return accounts_totals
        end
    end
    def self.interest_time
        @@accounts.each do | account |
            account.balance += (account.balance * @@interest_rate)
        end
    end
end

haggai = BankAccount.new
puts
p "Your Account1" #was created by self create
p your_account1 = BankAccount.create
p your_account1.deposit(100)
p your_account1.balance
p your_account1.widthraw(10)
puts
p "Your account2"  #was created by self create
p your_account2 = BankAccount.create
p your_account2.deposit(100)
p your_account2.deposit(100)
p your_account2.widthraw(15)

p your_account2.balance
puts
p "haagai account"
p haggai
p haggai.deposit(200)
p haggai
p haggai.widthraw(50)
p haggai
p haggai.balance
p haggai
puts
p "total_funds"
p BankAccount.total_funds
puts
p "interest_time"
p BankAccount.interest_time

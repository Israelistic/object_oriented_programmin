#!/usr/bin/env ruby
class BankAccount

    def initialize(balance, interest_rate)
        @balance = balance
        @interest_rate= interest_rate
    end

    def balance
        return @balance
    end
    def deposit(amount)
        @balance += amount
        return balance
    end

    def widthraw(amount)
        @balance -= amount
    end


    def gain_interest (balance, interest_rate)
        i =(@balance * @interest_rate)
        p "based on you balance and interest_rate you will gain #{i}"
         new_balance += i
        return new_balance}

    end
end

acct = BankAccount.new(100, 0.2)
 p acct.balance
 p acct.deposit(100)
 p acct.widthraw(50)
 p acct.gain_interest(balace, interest_rate)

p

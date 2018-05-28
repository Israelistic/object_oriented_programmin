class Person
# built in
    def initialize(first_name, last_name)
        @first_name = first_name
        @last_name = last_name
        @bank_account = 0
    end


# ATRIBUTE READER
    def first_name
        @first_name
    end
# ATRIBUTE READER
    def last_name
        @last_name
    end
# ATRIBUTE READER
    def first_name = (new_first_name)
        @first_name = new_first_name
    end
    def last_name = (new_first_name)
        @last_name = last_name
    end
    # ATRIBUTE
    
    def greeting
        return "#{@first_name} #{@last_name}"
    end
# ATRIBUTE READER
    def full_name
        "#{@first_name} #{ last_name}" # the last_name is getting it value from line 22 , and @first_name is getting it value from greeting
    end
    def greeting
        "Hi, my name is#{full_name}"
    end


end

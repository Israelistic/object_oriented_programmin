class Contact
    #class variable
    @@contacts = []
    @@next_id = 1000

# optional variable must be at the end
    def initialize (first_name, last_name, email, note = 'N/A')
    @first_name = first_name
    @last_name = last_name
    @email = email
    @notes = notes
    @id += @@ext_id
    @@next_id += 1
    end
    # CLASS METHOD
    def self.all
        @@contacts
    end
    #READERS
    def first_name
        @first_name
    end

    def last_name
        @last_name
    end
    def email
        @email
    end

    def notes=(notes)
        @notes
    end
    def self.find (id)
        @@contacts.each do | contact|
            if id == id
    end


    #WRITERS

    def first_name(first_name)
        @first_name = first_name
    end

    def last_name(last_name)
        @last_name = last_name
    end
    def email(email)
        @email = email
    end

    def notes=(notes)
        @notes = notes
    end
    def full_name
        "#{first_name} #{last_name}"
    end
    def save
        @@contacts << self
    end

    def self.create(first_name, last_name, email, notes = 'N/A')
        new_contact = self.new(first_name, last_name, email, notes )
        new_contact.save
        return new_contact
    end










end

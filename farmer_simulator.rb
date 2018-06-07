class Farm

    def initialize
        @fields =[]
        @total_amount = 0
    end
    def main
        while true
            options_menu
            user_input = gets.chomp
            option_action(user_input)
        end
    end
    def options_menu
        puts "Please select an option:"
        puts "[Field] -> Adds a new field"
        puts "[Harvest] -> Harvests crops and adds to total harvested"
        puts "[Status] -> Displays some information about the farm"
        puts "[Relax]-> Provides lovely descriptions of your fields"
        puts "[Exit] -> Exits the program"
        puts "Enter your selection:"
    end
    def option_action(user_input)
        case user_input
            when "field" then add_field
            when "harvest" then harvest
            when "status" then status
            when "relax" then relax
            when "exit" then exit
        end
    end

    def status
        @fields.each do |field|
            p "#{field.type} field is #{field.hectare}"
        end
            p "The farm has #{total_amount} harvested food so far"


    end
    def relax
        @fields.each do | field |
            if field.type == "corn"
                corn_field_r = field.harvest
            elsif field.type == "wheat"
                wheat_field_r = field.harvest
            end
            p "#{corn_field_r} hectares of tall green stalks rustling in the breeze fill your horizon."
            p "The sun hangs low, casting an orange glow on a sea of #{wheat_field_r} hectares of wheat."
        end


    end
    def calc(hectare, type)
        if type == "corn"
            total_corn += (20 * hectare)
        elsif type == "wheat"
            total_wheat += (30 * hectare)
        end
    end

    def relax
    end

    def harvest
        @fields.each do | field |
            p "Harvesting #{field.harvest} food from #{field.hectare} hectare #{field.type} field."
            p @total_amount += field.harvest
        end
            p p "The farm has #{total_amount} harvested food so far"
    end

    def add_field
        corn_hectare = 0
        wheat_hectare = 0
        p "What kind of field is it: corn or wheat?"
            field_type_input = gets.chomp
        p "How large is the field in hectares?"
            field_size_input = gets.to_i
        p "Added a #{field_type_input} field of #{field_size_input}!"
            @fields <<  Field.new(field_size_input, field_type_input)
            # if field_type_input == "corn"
            #     corn_hectare += field_size_input
            # elsif field_type_input == "wheat"
            #     wheat_hectare += field_size_input
            # end
    end

    def total_amount
        @total_amount
    end

    def fields
        @fields
    end
end

class Field

    def initialize(hectare, type)
        @hectare = hectare
        @type = type

    end

    def harvest
        # @fields.each do |field|
            if @type == "corn"
            total_food = (20 * @hectare)
            elsif @type == "wheat"
            total_food = (30 * @hectare)
            end

        # end
        # @total_amount += (total_corn + total_wheat)
        return total_food
    end

    def type
        @type
    end

    def hectare
        return @hectare
    end

    def corn_hectare
        return @corn_hectare
    end

    def wheat_hectare
        return @wheat_hectare
    end

end
p farm1 = Farm.new
p farm1.main
# puts
# p farm1.add_field
# puts
# puts
# p farm1.harvest
# puts
# p farm1.status
 # farm1.main

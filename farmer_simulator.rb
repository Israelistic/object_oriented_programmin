class Farm
    attr_accessor @hectare,
    def initialize
        @hectare
    end
    def main
        options_menu
        user_input = gets.chomp
        option_action(option_input)
    end

    def options_menu
        puts "Please select an option:"
        puts "[field] -> Adds a new field"
        puts "[harvert] -> Harvests crops and adds to total harvested"
        puts "[status] -> Displays some information about the farm"
        puts "[relax]-> Provides lovely descriptions of your fields"
        puts "[exit] -> Exits the program"
        puts "Enter your selection:"
    end
    def option_action(user_input)
        case user_input
            when "filed" then
            when "harvest" then
            when "status" then
            when "relax" then
            when "exit" then exit
        end
    end

end

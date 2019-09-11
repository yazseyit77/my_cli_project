class MyCliProject::CLI

    def call
        show_deals
        menu
        goodbye
    end

    def show_deals
        puts "Limited Deals:"
    
        @limited_deals = MyCliProject::Deal.now
    end

    def menu
        
        input = nil
        while input != "exit"
            puts "Type the order of the deals to see more info, type list to see the deals or type exit below:"

            input = gets.strip.downcase
            case input
            when "1"
                puts "LIMITED EDITION WOODEN CASES"
            when "2"
                puts "ANCHOR LIMITED EDITION WOODEN CASE"
            when "3"
                puts "LIMITED EDITION AMERICAN FLAG"
            when "4"
                puts "WOODEN ALARM CLOCK + WIRELESS CHARGER"
            when "5"
                puts "BAMBOO WOOD CHARGER STAND FOR APPLE WATCH & IPHONES"
            when "list"
                show_deals
            when !"exit" && !"list" 
                puts "Choose one of the deals or type exit"
            end
        end
    end

    def goodbye
        puts "Bye! Thank you for using my app!"
    end

end
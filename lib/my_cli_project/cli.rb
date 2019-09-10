#Main CLI controller

class MyCliProject::CLI

    def call
        show_deals
        menu
        goodbye
    end

    def show_deals
        puts "Limited Deals:"
        @deals = MyCliProject::Deal.now
    end

    def menu
        
        input = nil
        while input != "exit"
            puts "Type the order of the deals to see more info, type list to see the deals or type exit below:"

            input = gets.strip.downcase
            case input
            when "1"
                puts "dfsfgs"
            when "2"
                puts "jdgjsfld"
            when "list"
                show_deals
            else
                puts "Choose one of the deals or type exit"
            end
        end
    end

    def goodbye
        puts "Bye! Thank you for using my app!"
    end

end
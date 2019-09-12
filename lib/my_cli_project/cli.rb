class MyCliProject::CLI

    def call
        show_deals
        "--------"
        menu
    end

    def show_deals
        puts "Limited77 Products:"
        puts "-----------------"
        
        @limited_deals = MyCliProject::Products.now
        @limited_deals.each.with_index(1) do |deal, i|
            puts "   #{i}. #{deal.name}"
        end   
    end

    def menu
        
        input = nil
        while input != "exit"
            puts "--------------------------------------------------------------------------------------------"
            puts "Type the product order for more info, type list for product list or type exit below:"
            puts "--------------------------------------------------------------------------------------------"


            input = gets.strip.downcase

            if input.to_i > 0 && input.to_i < 9
                my_deal = @limited_deals[input.to_i-1]
                puts "   #{my_deal.name} --> #{my_deal.price} #{my_deal.available} --> #{my_deal.url}"
            elsif input == "list"
                show_deals
            elsif input == "exit"
                goodbye
            else
                puts "!!! Choose one of the deals or type exit !!!"
            end
        end
    end

    def goodbye
        puts "Bye! Thank you for using my CLI app!"
    end

end
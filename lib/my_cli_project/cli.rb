class MyCliProject::CLI

    def call
        show_deals
        menu
        goodbye
    end

    def show_deals
        puts "Limited Deals:"
    
        @limited_deals = MyCliProject::Products.now
        @limited_deals.each.with_index(1) do |deal, i|
            puts "#{i}. #{deal.name} - #{deal.price} - #{deal.url}"
        end   
    end

    def menu
        
        input = nil
        while input != "exit"
            puts "Type the order of the deals to see more info, type list to see the deals or type exit below:"

            input = gets.strip.downcase

            if input.to_i > 0
                my_deal = @limited_deals[input.to_i-1]
                puts "#{my_deal.name} - #{my_deal.price} - #{my_deal.url}"
            elsif "list"
                show_deals
            elsif !"exit" && !"list" 
                puts "Choose one of the deals or type exit"
            end
        end
    end

    def goodbye
        puts "Bye! Thank you for using my app!"
    end

end
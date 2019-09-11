class MyCliProject::Deal

    def self.now
        puts <<-DOC.gsub /^\s*/, '   '
        "1. LIMITED EDITION AMERICAN FLAG"
        "2. ANCHOR LIMITED EDITION WOODEN CASE"
        "3. LIMITED EDITION MUSIC NOTE"
        "4. WOODEN ALARM CLOCK + WIRELESS CHARGER"
        "5. BAMBOO WOOD CHARGER STAND FOR APPLE WATCH & IPHONES"
        DOC

        deal_1 = self.new
        deal_1.name = "LIMITED EDITION AMERICAN FLAG"
        deal_1.price = "$29.99"
        deal_1.url = "https://www.limited77.com/collections/cell-phone-cases/products/limited-edition-american-flag"

        deal_2 = self.new
        deal_2.name = "ANCHOR LIMITED EDITION WOODEN CASE"
        deal_2.price = "$29.99"
        deal_2.url = "https://www.limited77.com/collections/cell-phone-cases/products/anchor"
        
        deal_3 = self.new
        deal_3.name = "LIMITED EDITION MUSIC NOTE"
        deal_3.price = "$29.99"
        deal_3.url = "https://www.limited77.com/collections/cell-phone-cases/products/copy-of-music-clef-limited-edition-wooden-engraved-case-cover-for-apple-iphone-and-samsung-galaxy"
        
        deal_4 = self.new
        deal_4.name = "WOODEN ALARM CLOCK + WIRELESS CHARGER"
        deal_4.price = "$59.99"
        deal_4.url = "https://www.limited77.com/collections/accessories/products/wooden-alarm-clock-wireless-charger"
        
        deal_5 = self.new
        deal_5.name = "BAMBOO WOOD CHARGER STAND FOR APPLE WATCH & IPHONES"
        deal_5.price = "$19.99"
        deal_5.url = "https://www.limited77.com/collections/accessories/products/bamboo-wood-charger-station-for-apple-watch-charging-dock-station-charger-stand-holder-for-iphones"
        





    end

end
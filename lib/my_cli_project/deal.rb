class MyCliProject::Deal

    def self.now
        puts <<-DOC.gsub /^\s*/, ''
        "1. LIMITED EDITION AMERICAN FLAG"
        "2. WOODEN ALARM CLOCK + WIRELESS CHARGER"
        "3. BAMBOO WOOD CHARGER STAND FOR APPLE WATCH & IPHONES"
        DOC
    end

end
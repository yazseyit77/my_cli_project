require 'pry'

class MyCliProject::Products

    attr_accessor :name, :price, :url, :photo

    def self.now

        self.scrape_limited
     
    end

    def self.scrape_limited
        products = []
         
        products << self.scrape_first
        products << self.scrape_second
       

        products
    end

    def self.scrape_first
        doc = Nokogiri::HTML(open("https://www.limited77.com/collections/accessories/products/bamboo-wood-charger-station-for-apple-watch-charging-dock-station-charger-stand-holder-for-iphones"))
        
        product = self.new
        product.name = doc.search("h1.product-single__title").text
        product.price = doc.search("span.product-single__price").text.strip
        product.url = doc.search("div.photos a.js-modal-open-product-modal").attr("href").value
       
        product
    end

   def self.scrape_second
        doc = Nokogiri::HTML(open("https://www.limited77.com/collections/accessories/products/wooden-alarm-clock-wireless-charger"))
        
        product = self.new
        product.name = doc.css("h1.product-single__title").text
        product.price = doc.css("span#ProductPrice-custom-product-template").text.strip
        product.url = doc.css("div.product-single__photo a").attr("href").value
        #binding.pry

        product
   end
end
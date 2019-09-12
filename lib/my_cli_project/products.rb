require 'pry'

class MyCliProject::Products

    attr_accessor :name, :price, :url, :available

    def self.now

        self.scrape_limited
     
    end

    def self.scrape_limited
        products = []
         
        products << self.scrape_first
        products << self.scrape_second
        products << self.scrape_third
        products << self.scrape_fourth
        products << self.scrape_fifth
        products << self.scrape_sixth
        products << self.scrape_seventh
        products << self.scrape_eighth
              

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

        product
   end

   def self.scrape_third
        doc = Nokogiri::HTML(open("https://www.limited77.com/products/snapback-hat"))
            
        product = self.new
        product.name = doc.css("h1.product-single__title").text
        product.price = doc.css("span#ProductPrice-custom-product-template").text.strip
        product.url = doc.css("div.product-single__photo a").attr("href").value

        product
   end

   def self.scrape_fourth
        doc = Nokogiri::HTML(open("https://www.limited77.com/products/baseball-dad-mens-navy-round-neck-t-shirt-funny"))
            
        product = self.new
        product.name = doc.css("h1.product-single__title").text
        product.price = doc.css("span#ProductPrice-custom-product-template").text.strip
        product.url = doc.css("div.product-single__photo a").attr("href").value

        product
   end

   def self.scrape_fifth
        doc = Nokogiri::HTML(open("https://www.limited77.com/products/worlds-okayest-dad-funny-design-gift-mug-funny"))
            
        product = self.new
        product.name = doc.css("h1.product-single__title").text
        product.price = doc.css("span#ProductPrice-custom-product-template").text.strip
        product.url = doc.css("div.product-single__photo a").attr("href").value

        product
   end

   def self.scrape_sixth
        doc = Nokogiri::HTML(open("https://www.limited77.com/products/jack-for-airpods"))
            
        product = self.new
        product.name = doc.css("h1.product-single__title").text
        product.price = doc.css("span#ProductPrice-custom-product-template").text.strip
        product.url = doc.css("div.product-single__photo a").attr("href").value

        product
   end

   def self.scrape_seventh
        doc = Nokogiri::HTML(open("https://www.limited77.com/products/limited-edition-american-flag?_pos=1&_sid=5c3b84fd2&_ss=r"))
            
        product = self.new
        product.name = doc.css("h1.product-single__title").text
        product.price = doc.css("span#ProductPrice-custom-product-template").text.strip
        product.url = doc.css("div.product-single__photo a").attr("href").value

        product
   end

   def self.scrape_eighth
        doc = Nokogiri::HTML(open("https://www.limited77.com/products/womens-sheer-kimono-cardigan"))
            
        product = self.new
        product.name = doc.css("h1.product-single__title").text
        product.price = doc.css("span#ProductPrice-custom-product-template").text.strip
        product.available = doc.css("div.product-form__item span#AddToCartText-custom-product-template").text.strip
        product.url = doc.css("div.product-single__photo a").attr("href").value
        #binding.pry

        product
   end



end
class Review

    @@all = []
    attr_reader :customer, :restaurant
    attr_accessor :content, :rating

    def initialize(customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        rating >= 1 && rating <= 5 ? @rating = rating : nil
        rating < 1 ? @rating = 1 : @rating = 5
        @content = content

        @@all << self
    end

    def self.all
        @@all
    end


  
end


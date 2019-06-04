class Review
    attr_reader :customer, :restaurant
    attr_accessor :rating, :content
    @@all = []
    def initialize(customer, restaurant, content, rating)
        @customer = customer
        @restaurant = restaurant
        @content = content
        @rating = rating

        @@all << self
    end

    def self.all
        @@all
    end
    
end


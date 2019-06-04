class Review
    
    attr_reader :customer, :restaurant
    attr_accessor :content, :rating
    @@all = []

    def initialize(customer, restaurant, content, rating)
        @customer = customer
        @restaurant = restaurant
        @content = content
        # assume that it will return 5 if the given rating is above 5 and return 1 if the given rating is below 1.
        if rating.to_i > 5.0
            @rating = 5
        elsif rating < 1.0
            @rating = 1
        else
            @rating = rating.to_i
        end
                
        @@all << self
    end


    def self.all
        @@all
    end
  
end


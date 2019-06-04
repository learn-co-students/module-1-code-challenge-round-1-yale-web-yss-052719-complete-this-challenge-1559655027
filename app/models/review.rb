class Review
  
attr_reader :restaurant, :customer
## restaurant and customer getter methods are used because author and restaurant should not be changed (principle of "least amount of privilege")

attr_accessor :content, :rating
## I assume that, in the real world, content and rating may be edited by customers (or by a ~somewhat~ unethical company *cough cough* yelp), so I used an accessor method for both writing and reading 


    @@all = []

    def initialize(restaurant, customer, content, rating)
        @restaurant = restaurant
        @customer = customer
        @content = content
        @rating = rating

        @@all << self
    end

    def self.all
        @@all
    end


end


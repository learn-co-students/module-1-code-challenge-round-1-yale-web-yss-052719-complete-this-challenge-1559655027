class Review
  
attr_reader :restaurant, :customer
## restaurant and customer getter methods are used because author and restaurant should not be changed (principle of "least amount of privilege")

attr_writer :rating, :content
## writer methods will allow the Yelp-style app to let customers (and our ~possibly~ unethical business practices) to go in and edit ratings and content 

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

    def content
        if @content.is_a? String
            @content
        else
            puts "Error: This review is corrupted. Please edit content for this review:"
            @content = gets.chomp
        end
    end

    def rating
        if !@rating.is_a? Integer
            puts "Error: Currently ratings in our app must be a number between 1 and 5. No half ratings for now, please add a new rating and try whatever you were doing again:"
            @rating = gets.chomp.to_i
        elsif @rating < 1
            puts "Error: Currently ratings in our app must be a number between 1 and 5. No 0 or negative ratings for now, please add a new rating and try whatever you were doing again:"
            @rating = gets.chomp.to_i
        elsif @rating > 5
            puts "You loved that restaurant!!! We'll be sure to send you more great suggestions your way after our Summer update!!!"
            @rating = 5
            ## for ratings above 5, I'm not going to give them the chance to put a lower rating (since they presumably liked the experience)
            ## It may be unethical from a data collection standpoint, and I'd find a better solution in the real world but I'm still pretending to be a slightly unethical Yelp extorti... business executive!
        else
            @rating
        end
    end


end


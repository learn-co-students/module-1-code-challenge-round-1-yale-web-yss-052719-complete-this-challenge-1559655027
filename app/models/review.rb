class Review
	attr_reader :customer, :restaurant, :content, :rating
	@@all = []

	def initialize(customer, restaurant, content, rating)
		@customer = customer
		@restaurant = restaurant
		@content = content

		if rating < 0
			@rating = 0
		elsif rating > 5
			@rating = 5
		else	
			@rating = rating
		end
		
		@@all << self
	end

	def self.all
		@@all
	end
  
end


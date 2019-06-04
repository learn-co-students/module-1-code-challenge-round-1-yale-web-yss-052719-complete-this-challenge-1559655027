class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
  	Review.all.select do |review|
  		review.restaurant == self
  	end
  end

  def customers
  	self.reviews.map do |review|
  		review.customer
  	end.uniq
  end

  def average_star_rating
  	total = 0
  	self.reviews.each do |review|
  		total += review.rating
  	end
  	total/self.reviews.count
  end

  def longest_review
  	self.reviews.sort_by {|review| review.content}.last
  end


  def self.all
  	@@all
  end

  def self.find_by_name(name)
  	self.all.find do |restaurant|
  		restaurant.name == name
  	end
  end

end

class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    self.reviews.collect do |review|
      review.customer
    end.uniq
  end

  def average_star_rating
    self.reviews.collect do |review|
      review.rating
    end.reduce(:+)/self.reviews.size
  end

  def longest_review
    self.reviews.collect do |review|
      review.content
    end.max_by do |content|
      content.length
    end
  end

  def self.find_by_name (name)
    Restaurant.all.find do |restaurant|
      restaurant.name == name
    end
  end

  


end

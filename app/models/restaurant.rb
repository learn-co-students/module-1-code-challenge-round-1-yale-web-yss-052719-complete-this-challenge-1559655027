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
    ## instance method returns array of all reviews associated with this instance of restaurant
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
    sum = 0.0
    self.reviews.each do |review|
      sum += review.rating
    end
    sum / self.reviews.count
  end

  def longest_review
    self.reviews.max_by do |review|
      review.content.length
    end.content
      ## returns content of longest review, not the instance of the longest_review
  end

  def self.find_by_name(name)
    @@all.find do |restaurant|
      restaurant.name == name
    end
  end


end

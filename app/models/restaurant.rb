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
    self.reviews.map do |review|
      review.customer
    end.uniq
  end

  def average_star_rating
    sum = 0
    self.reviews.each do |review|
      sum += review.rating
    end
    sum / self.reviews.length
  end

  def review_content
    self.reviews.map do |review|
      review.content
    end
  end

  def longest_review
    self.review_content.max_by {|review_content| review_content.length}
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end
  

end

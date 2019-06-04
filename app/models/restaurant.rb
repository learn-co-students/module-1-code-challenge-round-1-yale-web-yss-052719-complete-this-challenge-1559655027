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
    total = self.reviews.inject(0) do |sum, review|
      sum + review.rating
    end
    total * 1.0 / self.reviews.size
  end

  def longest_review
    self.reviews.map do |review|
      review.content
    end.max_by do |content|
      content.length
    end
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

end

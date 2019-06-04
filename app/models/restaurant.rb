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

  def self.find_by_name(name)
    self.all.find do |restaurant|
      name == restaurant.name
    end
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
    rating_sum = 0
    self.reviews.each do |review|
      rating_sum += review.rating
    end
    rating_sum/self.reviews.count
  end

  def longest_review
    self.reviews.map do |review|
      review.content
    end.max_by(&:length)
  end

end

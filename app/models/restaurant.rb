class Restaurant
  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self 
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

    def average_star_rating
      x = 0
      self.reviews.each do |review|
        x = x + review.rating 
      end
      x/self.reviews.length
    end

    def longest_review
      self.reviews.max_by do |review|
        review.content.length
      end.content
    end

    def self.find_by_name(name)
      Restaurant.all.find do |restaurant|
        restaurant.name == name
      end
    end
end

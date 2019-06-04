class Restaurant
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name }
  end

  def customers
    reviews.map do |review|
      review.customer
    end.uniq
  end

  def reviews
    Review.all.find_all {|review| review.restaurant == self }
  end

  def average_star_rating
    sum = 0
    reviews.each {|review| sum += review.rating }
    reviews.size > 0 ? sum / reviews.size : nil
  end

  def review_content_size(review)
      review ? review.content.size : 0
  end

  def longest_review
    # Returns longest review content for given restaurant
    reviews ? review_content_size(reviews.first) : longest_content = 0
    result = reviews.first
    reviews.each do |review|
      review_content_size(review) > longest_content ? result = reviews.first : nil
    end
    result.content
  end

end

class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |customer|
      name == customer.full_name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      name == customer.first_name
    end
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content, rating)
    if rating > 5 || rating < 1
      "Rating must be 1 through 5"
    else
      review = Review.new(self, restaurant, content, rating)
    end
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end


  def num_reviews
    self.reviews.count
  end

  def restaurants
    self.reviews.map do |review|
      review.restaurant
    end.uniq
  end


end

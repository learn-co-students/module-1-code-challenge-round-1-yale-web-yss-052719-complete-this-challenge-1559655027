class Customer
  attr_reader :first_name, :last_name
  attr_accessor :reviews

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    new_review = Review.new(self, restaurant, content, rating)
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    self.reviews.size
  end

  def restaurants
    self.reviews.map do |review|
      review.restaurant
    end.uniq
  end
    
  def self.find_by_name(name)
    Customer.all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    Customer.all.map do |customer|
      customer.full_name
    end
  end

end

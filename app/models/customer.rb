class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def self.all
    @@all
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    review = Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    Review.all.select do |review|
      review.customer == self
    end.count
  end

  def restaurants
    Review.all.select do |review|
      review.customer == self
    end.map do |review|
      review.restaurant
    end.uniq
  end

  def self.find_by_name(full_name)
    Customer.all.find do |customer|
      customer.first_name + " " + customer.last_name == full_name
    end
  end

  def self.find_all_by_first_name(first_name)
    Customer.all.select do |customer|
      customer.first_name == first_name
    end
  end

  def self.all_names
    Customer.all.map do |customer|
      customer.first_name + " " + customer.last_name
    end
  end
end

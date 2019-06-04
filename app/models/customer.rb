class Customer
  @@all = []
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|customer| customer.full_name == name }
  end

  def self.find_all_by_first_name(name)
    self.all.find_all {|customer| customer.first_name == name }
  end

  def self.all_names
    self.all.map {|customer| customer.full_name }
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    self.reviews.size
  end

  def reviews
    Review.all.find_all do |review| 
      review.customer == self
    end
  end

  def restaurants
    self.reviews.map do |review|
      review.restaurant
    end.uniq
  end
end

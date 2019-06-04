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

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  #return all rev instances by this customer in arr
  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    self.reviews.length
  end

  def restaurants
    self.reviews.map do |rev| # arr of restuarants that customer has reviewed
      rev.restaurant
    end.uniq
  end

  def self.find_by_name(name)
    temp = name.split(" ")
    self.all.find do |customer|
      customer.first_name == temp[0] && customer.last_name == temp[1] 
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    arr = []
    self.all.each do |customer|
      temp = [customer.first_name, customer.last_name].reject(&:empty?).join(' ')
      # temp = customer.first_name.concat(customer.last_name)
      arr << temp
    end
    arr
  end


end

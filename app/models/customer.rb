class Customer
  attr_reader :first_name, :last_name

    @all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all

  def initialize(restaurant, content, rating)
    @restaurant = restaurant
    @content = content
    @rating = rating

  end

  def num_review(name)


  end


  def restaurants = []
    @all << self
  end

end

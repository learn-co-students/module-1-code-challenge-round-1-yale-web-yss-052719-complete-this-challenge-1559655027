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

  end

  def num_reviews
  end

  def restaurants

  end

  def self.find_by_name(name)

  end

  def self.all_names
    
  end

end

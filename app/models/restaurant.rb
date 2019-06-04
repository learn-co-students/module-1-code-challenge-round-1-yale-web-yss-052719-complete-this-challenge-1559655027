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

  def customers
    Review.all.select do |rest|
      rest.restaurant == self
    end.map do |cust|
      cust.customer
    end.uniq
  end

  def reviews
    Review.all.select do |find|
      find.restaurant == self
    end
  end

  def average_star_rating
    sum = 0
    self.reviews.each do |star|
      sum += star.rating
    end
    sum * 1.0 / self.reviews.count
  end

  def longest_review
    rev = self.reviews.map do |rate|
      rate.content
    end
      # Used https://stackoverflow.com/questions/22438646/
      # how-can-i-select-the-longest-string-from-a-ruby-array
      # for guidance
      rev.max_by(&:length)
  end

  def self.find_by_name(name)
    self.all.select do |this_name|
      this_name.name == name
    end
  end

end

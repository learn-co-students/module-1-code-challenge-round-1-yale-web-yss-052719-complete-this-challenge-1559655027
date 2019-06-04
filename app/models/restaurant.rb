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


  #self made method - return all rev instance for res
  def reviews
    Review.all.select do |rev|
      rev.restaurant == self
    end
  end

  def customers
    self.reviews.map do |rev|
      rev.customer
    end.uniq
  end

  # def reviews
  #   self.rev.map do |rev|
  #     rev.restaurant
  #   end
  # end

  def average_star_rating
    num = 0
    num1 = 0
    self.reviews.each do |rev|
      num += rev.rating
      num1 += 1
    end
    num / num1
  end

  def longest_review
    hold = ""
    self.reviews.each do |rev|
      if hold.length < rev.content.length
        hold = rev.content
      end
    end
    hold
  end

  def self.find_by_name(name)
    self.all.find do |rest|
      rest.name == name
    end
  end

end


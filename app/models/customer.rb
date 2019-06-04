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
    Review.new(self, restaurant, rating, content)
  end

  def customers
    Review.all.select do |custom|
      custom.customer == self
    end
  end
  
  def num_reviews
    self.customers.count
  end

  def restaurants
    self.customers.map do |resta|
      resta.restaurant
    end.uniq
  end

  def self.find_by_name(name)
    full_name = name.split(" ")
    one_name = full_name[0]
    two_name = full_name[1]

    self.all.find do |nom|
      nom.first_name == one_name && nom.last_name == two_name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |this_name|
      this_name.first_name == name
    end
  end

  # def name_join
  #   full_name = name.split(" ")
  #   one_name = full_name[0]
  #   two_name = full_name[1]
  # end

  def self.all_names
    # full_name = name.split(" ")
    # one_name = full_name[0]
    # two_name = full_name[1]

    self.all.map do |full|
      full.first_name + " " + full.last_name
      # I didn't think this would work :O
      # This returns array with full names:
      # "Matt Peoples", "Jod Coburn", "Charles Xavier", "Charles Xiggy"]
    end
  end
end

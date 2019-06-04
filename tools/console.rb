require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("John", "Smith")
customer2 = Customer.new("John", "Green")
customer3 = Customer.new("Adam", "Smith")
customer4 = Customer.new("Ray", "Stevens")
customer5 = Customer.new("Dan", "Brown")
customer6 = Customer.new("John", "Green")

restaurant1 = Restaurant.new("A")
restaurant2 = Restaurant.new("B")
restaurant3 = Restaurant.new("C")
restaurant4 = Restaurant.new("D")
restaurant5 = Restaurant.new("E")
restaurant6 = Restaurant.new("C")

review1 = Review.new(customer1, restaurant1, 5, "good")
review2 = Review.new(customer1, restaurant1, 5, "very good")
review3 = Review.new(customer1, restaurant3, 1, "bad")
review4 = Review.new(customer1, restaurant4, 3, "mediocre")
review5 = Review.new(customer2, restaurant1, 4, "not bad")
review6 = Review.new(customer3, restaurant1, 4, "pretty good")
review7 = Review.new(customer3, restaurant2, 4, "wow")
review8 = Review.new(customer3, restaurant4, 2, "ew")
review9 = Review.new(customer4, restaurant2, 2, "would not go again")
review10 = Review.new(customer6, restaurant1, 3, "nice")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
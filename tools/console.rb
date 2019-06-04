require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Bob", "Bobson")
customer2 = Customer.new("Tina", "Fey")
customer3 = Customer.new("Ray", "Fish")
customer4 = Customer.new("Ray", "Johnson")


restaurant1 = Restaurant.new("Applebee's")
restaurant2 = Restaurant.new("Wendy's")

review1 = Review.new(customer1, restaurant1, "great", 5)
review2 = Review.new(customer2, restaurant1, "eh", 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
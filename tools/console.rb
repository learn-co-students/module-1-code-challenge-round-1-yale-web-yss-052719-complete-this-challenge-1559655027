require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Peter", "Hwang")
customer2 = Customer.new("Andy", "Hwang")
customer3 = Customer.new("Peter", "Piper")

restaurant1 = Restaurant.new("Taco Bell")
restaurant2 = Restaurant.new("Pizza Hut")
restaurant3 = Restaurant.new("Olive Garden")

review1 = customer1.add_review(restaurant1, "a", 1)
review2 = customer2.add_review(restaurant2, "a", 1)
review3 = customer3.add_review(restaurant3, "a", 1)
review4 = customer1.add_review(restaurant2, "abcde", 1)
customer1.add_review(restaurant3, "abcde", 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
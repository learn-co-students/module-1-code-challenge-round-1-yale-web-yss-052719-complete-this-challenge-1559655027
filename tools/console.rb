require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cA = Customer.new("Bob", "Dylan")
cB = Customer.new("Bob", "Li")
cC = Customer.new("Bob", "Kagame")

rA = Restaurant.new("Steamed")
rB = Restaurant.new("Great Wall")
rC = Restaurant.new("Taste of China")

revA = Review.new(cA, rA, "Good", 3)
revB = Review.new(cB, rB, "Bad", 2)
revC = Review.new(cC, rC, "Great", 4)
revD = Review.new(cB, rA, "adsfaffff", 3.3)
revE = Review.new(cA, rB, "adsf", 1)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
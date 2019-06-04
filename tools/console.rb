require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jenna = Customer.new("Jenna", "Zheng")
charles = Customer.new("Charles", "Kho")
jin = Customer.new("Jin", "Zheng")

r1 = Restaurant.new("The Cheesecake Factory")
r2 = Restaurant.new("Chipotle")
r3 = Restaurant.new("Cut")

add_review1 = Review.new(r1, )
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

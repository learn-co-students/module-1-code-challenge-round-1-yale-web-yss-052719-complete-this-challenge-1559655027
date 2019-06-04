require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

max = Customer.new("Max", "Sun")
leo = Customer.new("Leo", "Sun")
erick = Customer.new("Erick", "Torres")
sam = Customer.new("Sam", "Woo")
sam2 = Customer.new("Sam", "Elliott")
max2 = Customer.new("Max", "Sun")

junzi = Restaurant.new("Junzi")
yorkside = Restaurant.new("Yorkside")
chipotle = Restaurant.new("Chipotle")
junzi2 = Restaurant.new("Junzi")

review1 = max.add_review(junzi, "Great restaurant", 8)
max.add_review(yorkside, "Pretty good pizza", 3)
max.add_review(chipotle, "Consistent", 4)
max.add_review(yorkside, "Was bad today", 2)
max.add_review(junzi, "Not that good actually", 2)
leo.add_review(junzi, "Good food", 4)
leo.add_review(yorkside, "Never been actually", 0)
erick.add_review(junzi, "Bad", -4)
sam.add_review(junzi, "OK", 3)
max2.add_review(junzi, "Woah I'm also Max and I just wanted to write the longest review", 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
require_relative '../config/environment.rb'
require_relative '../app/models/customer.rb'
require_relative '../app/models/restaurant.rb'
require_relative '../app/models/review.rb'

def reload
  load 'config/environment.rb'
end

matt = Customer.new("Matt", "Peoples")
jodie = Customer.new("Jod", "Coburn")
prof_x = Customer.new("Charles", "Xavier")
charlie_x = Customer.new("Charles", "Xiggy")

mc_d = Restaurant.new("McDonalds")
bk = Restaurant.new("Burger King")
kfc = Restaurant.new("KFC")

matt.add_review(kfc, "Didnt like it", 1)

review1 = Review.new(matt, mc_d, 4, "Im loving it")
review2 = Review.new(matt, kfc, 3, "Its ok")
review3 = Review.new(jodie, kfc, 2, "Hate it")
review4 = Review.new(jodie, bk, 4, "Im not a vegetarian anymore")
review5 = Review.new(prof_x, mc_d, 1, "Im not amused, not one bit")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

ruby_tuesdays = Restaurant.new("Ruby Tuesdays")
mcDonalds = Restaurant.new("McDonalds")
appleBees = Restaurant.new("Applebees")
longHorn = Restaurant.new("LongHorn")
chipotle = Restaurant.new("Chipotle")

elijah = Customer.new("Elijah", "Florence")
prince = Customer.new("Prince", "Wilson")
marcoPolo = Customer.new("Marco", "Polo")
theDevil = Customer.new("Lucifer", "Morningstar")
ghengisKhan = Customer.new("Ghengis", "Khan")
azazel = Customer.new("Azazel", "Melomorn")

review1 = elijah.add_review(chipotle, "If only Guac wasnt extra.", 4.5)
elijah.add_review(appleBees, "Never eat here.", 4.5)
prince.add_review(longHorn, "Delicious but service was questionable", 3.5)
ghengisKhan.add_review(appleBees, "Absolutely fucking incredible.", 5)
ghengisKhan.add_review(longHorn, "Absolutely fucking incredible.", 5)
ghengisKhan.add_review(ruby_tuesdays, "Absolutely fucking incredible.", 5)
azazel.add_review(mcDonalds, "trash.", 1)
azazel.add_review(longHorn, "meh.", 2)
azazel.add_review(chipotle, "ok.", 2.5)
theDevil.add_review(appleBees, "It sucked.", 1)
theDevil.add_review(appleBees, "It still sucked.", 1)

Customer.all 
Restaurant.all 
Review.all

puts ghengisKhan.num_reviews
puts ghengisKhan.restaurants
puts appleBees.customers
puts appleBees.reviews
puts appleBees.average_star_rating
puts appleBees.longest_review
puts Customer.find_by_name("Elijah Florence")
puts Customer.find_all_by_first_name("Elijah")
puts Customer.all_names
puts Restaurant.find_by_name("Chipotle")
puts review1.customer
puts review1.restaurant
puts review1.content
puts review1.rating


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
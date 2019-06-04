require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

kfc = Restaurant.new("KFC")
mcdonalds = Restaurant.new("McDonalds")
french_laundry = Restaurant.new("French Laundry")

ganesh = Customer.new("Ganesh", "Raj")
echo = Customer.new("Echo", "Buadu")
max = Customer.new("Max","Sun")

rev_1 = max.add_review(kfc,"This chicken tastes like school lunch meat.", 1.5)
rev_2 = echo.add_review(kfc, "This is terrible for you but tastes kinda good.",3)
rev_3 = max.add_review(mcdonalds, "Great french fries.", 4)
rev_4 = ganesh.add_review(french_laundry, "Not worth the money.", 3)
rev_5 = max.add_review(kfc, "Changed my mind due to the double down sandwich.", 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
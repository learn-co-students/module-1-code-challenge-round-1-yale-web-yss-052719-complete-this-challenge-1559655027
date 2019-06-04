require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Amaris", "Fullelove")
c2 = Customer.new("Savannah", "Miller")
c3 = Customer.new("Sophia", "Devito")
c4 = Customer.new("Sophia", "Ross")

r1 = Restaurant.new("Pokemoto")
r2 = Restaurant.new("Basil")

rv1 = Review.new(c1, r1, "Wow I love it.", 5)
rv2 = Review.new(c2, r1, "lololololololololololololol this is great", 4.5)
rv3 = Review.new(c1, r2, "Just awful", -100)
rv4 = Review.new(c1, r2, "jk I change my mind", 20)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
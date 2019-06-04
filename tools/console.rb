require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("fir1", "last1")
c2 = Customer.new("fir2", "last2")
c3 = Customer.new("fir1", "last1")

res1 = Restaurant.new("res1")
res2 = Restaurant.new("res2")
res3 = Restaurant.new("res1")
review1 = Review.new(c1, res1, "great", 2)
review2 = Review.new(c1, res1, "good", 10)
review3 = Review.new(c2, res2, "fantastic", 4)
review4 = Review.new(c2, res1, "fantastic!", 4.2)
review5 = Review.new(c1, res2, "rubbish!", 0)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c_names = [["Roxanne", "Harris"], ["Naruto", "Uzumaki"]]

r_names = ["Pepe's Pizza", "Yorkside", "Brick Oven", "Alpha Delta", "Shake Shack", "Vivi's"]

content = ["You suck!", "You rock!", "I'm satisifed.", "OK", "Sorta OK", "Flat out DUB..."]
customers = []
restaurants = []
(0..10).each do |i|
  c_names[i] ? customers << Customer.new(c_names[i][0], c_names[i][1]) : nil
  r_names[i] ? restaurants << Restaurant.new(r_names[i]) : nil
end

# Add reviews
(0..10).each do |i|
  customers.sample.add_review(restaurants.sample, content.sample, 6)
end

a = restaurants.map {|r| r.reviews }



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
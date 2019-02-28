# There are three parts to this challenge and remember to push your solution.

# PART 1:
# - Create a well named variable that contains the amount of time it took you to get to class
# - Create a complete sentence  that lets us know how you got to class and how long it took
# - Print this complete sentence

=begin
def travel_to_class
  time_to_class = 0   #beginning at 0 value
  puts "My first step is to drive fifteen minutes to my most convenient bus stop where there is always a bus waiting,"
  time_to_class += 15 #adding puts statement and adding travel time to variable

  print "then my partner and I usually sit on the bus for another 15 minutes and play on our phones. \n"
  time_to_class += 15

  puts "After that we say our goodbyes and I walk to the nearby loop bus, that can take a good five minutes and if I'm lucky the bus is just about ready to leave,"
  time_to_class += 5

  print "then you guessed it, another wait; but this one is only five minutes. \n"
  time_to_class += 5

  puts "Final step (pun not intended) is to walk another 5 to the IES building. \n"
  time_to_class += 5

  puts "All in all, my total travel time is #{time_to_class}."
end

travel_to_class

=end

# PART 2:

#have to declare backlog as global for now. putting inside the order method resets
#the total order amounts. Maybe make a class and instance within?

class Drink
  @@backlog = Hash.new
  @@backlog = {cocktail: 3, water: 2, beer: 6}

  def order
    #user input
    puts "Whaddya want? You only got 3 options: Beer, Cocktail or Water."
    input = gets.chomp.downcase
    # adding 1 drink order to Hash total
    case input
    when "cocktail"
      @@backlog[:cocktail] += 1
    when "water"
      @@backlog[:water] += 1
    when "beer"
      @@backlog[:beer] += 1
    else
      puts "We don't make that here!"
    end
  end

  def show_backlog(element)
    return @@backlog[element]
  end
end

class Cocktail
end

class Water
end

class Beer
end

drink = Drink.new
drink.order


# Part Three:
# Cocktails sell for $22, and cost $8 to make
# Beer sell for $12, and cost $3 to pour
# Water sell for $6, and cost $0.15 to make

# Print out the total profit for the orders you have
#initializing 2 zero values
total_cost = 0
total_sell = 0
#creating new hash that includes an updated backlog total
products = Hash.new
products = {"Cocktail" => {cost: 8, sell: 22, backlog: drink.show_backlog(:cocktail)}, "Beer" => {cost: 3, sell: 12, backlog: drink.show_backlog(:beer)}, "Water" => {cost: 6, sell: 0.15, backlog: drink.show_backlog(:water)}}
#looping through Hash
for drink_name, info in products
  #adding costs and sell prices to total values
  for price_point, amount in info
    if price_point == :cost
      temp_cost = amount * info[:backlog]
      total_cost += temp_cost
    elsif price_point == :sell
      temp_sell = amount * info[:backlog]
      total_sell += temp_sell
    end
  end
end

puts "Total Cost: #{total_cost}"
puts "Total Sell: #{total_sell}"
profit = total_sell - total_cost
puts "Total Profit: #{profit.round(2)}"
#profit = sell - cost

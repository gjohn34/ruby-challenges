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

#creating Drink class with current backlog (future will update to have dynamic backlog)
class Drink
  @@backlog = Hash.new
  @@backlog = {cocktail: 3, water: 2, beer: 6}
  @@products = Hash.new
  @@products = {"Cocktail" => {cost: 8, sell: 22, backlog: @@backlog[:cocktail]}, "Beer" => {cost: 3, sell: 12, backlog: @@backlog[:beer]}, "Water" => {cost: 6, sell: 0.15, backlog: @@backlog[:water]}}
  @@total_cost = 0
  @@total_sell = 0

  def give_quantity(element)
    puts "How many?"
    quantity_input = gets.chomp.to_i
    if quantity_input. != 0
      @@backlog[element.to_sym] += quantity_input
      @@products["Cocktail"][:backlog] += quantity_input
      puts "DANNY, yous got to make #{@@backlog[element.to_sym]} #{element.to_s}s now. Get moving!"
    else
      puts "Whole numbers only, buddy"
    end
  end

# => order method to capture user input and add drink order to backlog
  # => (future will add quantity option)
  def order
    #user input
    puts "Whaddya want? You only got 3 options: Beer, Cocktail or Water."
    input = gets.chomp.downcase
    # adding 1 drink order to Hash total
    case input
    when "cocktail"
      give_quantity(:cocktail)
    when "water"
      give_quantity(:water)
    when "beer"
      give_quantity(:beer)
    else
      puts "We don't make that here!"
    end
  end

  def show_backlog
    return @@backlog
  end

  def show_products
    return @@products
  end

  def generate_profits#(products = @@products)
    for drink_name, info in @@products
      #adding costs and sell prices to total values
      for price_point, amount in info
        if price_point == :cost
          temp_cost = amount * info[:backlog]
          @@total_cost += temp_cost
        elsif price_point == :sell
          temp_sell = amount * info[:backlog]
          @@total_sell += temp_sell
          end
        end
      end
    profit = @@total_sell - @@total_cost
  end


  def show_total_cost
    return @@total_cost
  end

  def show_total_sell
    return @@total_sell
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
profit = drink.generate_profits
puts "Total Cost: $#{drink.show_total_cost}"
puts "Total Sell: $#{drink.show_total_sell}"
puts "Total Profit: $#{profit.round(2)}"

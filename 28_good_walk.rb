# Good walk
# Difficulty: medium/hard

# You live in the city of Cartesia where all roads are laid out in a perfect grid.
# You arrived ten minutes too early to an appointment, so you decided to take the
# opportunity to go for a short walk.

# The city provides its citizens with a Walk Generating App on their phones --
# everytime you press the button it sends you an array of one-letter strings
# representing directions to walk (eg. ['n', 's', 'w', 'e']). Y
# ou always walk only a single block in a direction and you know it takes
# you one minute to traverse one city block, so create a function that will
# return true if the walk the app gives you will take you exactly ten minutes
# (you don't want to be early or late!) and will, of course, return you to your starting point.
# Return false otherwise.

# Rails uses rspec for testing by default
# rspec is automatically installed with Rails, but if you haven't installed Rails yet,
# you'll have to install it to use the tests included for this morning challenge:
#    sudo gem install rspec

# Then run the tests by just running:
#   rspec

# rspec uses a convention that it will run any file in a subdirectory called 'spec' that
# has a file name ending in _spec.rb

#put all directions into a hash, all norths should equal all souths and all easts
#equal west.

#will return true if homesafe AND 10 minutes
#return false for else

#first method that takes input as directed
def good_walk(walk)
  homesafe = false
  walk_hash = {"n" => 0, "s" => 0, "e" => 0, "w" => 0}
  for direction in walk
    walk_hash[direction] += 1
  end
  homesafe = true if (walk_hash["n"] == walk_hash["s"]) and (walk_hash["e"] == walk_hash["w"])
  (walk.size == 10) and homesafe ? true : false
end


def generate_walk(time)
  directions = ['n','e','s','w']
  walk_array = []
  time.times do
    walk_array.push(directions.sample)
  end
  return walk_array
end

def very_good_walk(time)
  walk_array = generate_walk(time)
  walk_hash = {"n" => 0, "s" => 0, "e" => 0, "w" => 0}
  homesafe = false
  for direction in walk_array
    walk_hash[direction] += 1
  end
  homesafe = true if (walk_hash["n"] == walk_hash["s"]) and (walk_hash["e"] == walk_hash["w"])
  (walk_array.size == time) and homesafe ? true : false
end

#second method creates random array and a time


puts very_good_walk(10)

# Unique

# Ruby has a handy array.unique helper which removes
# duplicates. Imlpement your own version of the helper,
# without using .unique.

# Difficulty:
# 5/10

# Example:


# Hints:
# A hash could be helpful in your solution.

# Check your solution by running the tests:
# ruby tests/10_unique_test.rb

def unique(mylist) #taking our array as a parameter
  unique_hash = {} #we initialize an empty hash and an empty list
  unique_list = [] #its a surprise tool that will help us later
  for element in mylist #we loop through every element in mylist
    if unique_hash[element].nil? #and if a key,value doesn't exist yet in our unique list
      unique_hash[element] = 1 #we create that key, value
    else unique_hash[element] += 1 #but if it does exist we just add one extra value to it
    end
  end

  for key, value in unique_hash #then we loop through our now populated hash
    unique_list.push(key) #and add the key to the empty list, ignoring how much its value is
  end
  return unique_list
end

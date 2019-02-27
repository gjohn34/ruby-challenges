# Methods
def in_array(string, array)
  for element in array #looping through array
    if string == element #if the string provided matches an element in array
      return true #return true
    end
  end #after looping if there are no matches method will return false
  return false
end

puts in_array("help", ["hello", "string", "help"])
puts in_array("niope", ["hello", "string", "help"])

# Write a method called 'in_array' which will take
# two parameteres:
# One as a string and one as an array of strings

# Return a boolean indicationg whether or not the
# string is found in the array.

# Test your solution with:
# ruby tests/05_in_array_test.rb

# Example:
# "hello", ["hi","howdy","hello"] should return true.
# Beast Mode:

# Redo the challenge but try solving it again in a different way.

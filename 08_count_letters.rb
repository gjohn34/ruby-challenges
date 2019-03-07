# Count Letters
def count_letters(string)
  array = string.split('')
  hash = {}
  for element in array
    count = array.count(element)
    hash[element] = count
  end
  return hash
end



# Write a method that will take a string, keep count
# of each letter and return the totals as a hash.

# Example:

# Check your solution by running the tests:
# ruby tests/08_count_letters_test.rb

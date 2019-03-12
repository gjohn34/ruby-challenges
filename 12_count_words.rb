# Your challenge is to write a program which will ask the user for input.
# The code should then output the number of times words are used.

def generate_words
  puts "input"
  input = gets.chomp.downcase.split(' ')
  input_hash = {}
  for element in input
    if input_hash.has_key?(element)
      input_hash[element] += 1
    else
      input_hash[element] = 1
    end
  end
  return input_hash
end



# Example:
# If the words 'hi hi Hi hello 1 1' are input, the result should be:
# hi 2
# Hi 1
# hello 1
# 1 2
puts generate_words

# Test your solution by running 12_count_words


# Your code here


# Beast Mode:
# Change your code so that it doesn't matter if capital letters are used,
# In the above example the result should be:
# hi 3
# hello 1
# 1 2

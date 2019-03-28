# Find the first non-repeated character
# Difficulty: medium

# String methods are an incredibly powerful way to
# validate and control user input.

# Write a method that will find the first non-repeated
# character in a String.
# Return false if only repeats are found.

# *Try writing this by hand first*.
# Confusing methods like this can become a lot more simple after
# they are written by hand.


#*E.g.* first-non-repeat("aaaabbbcccdeeefgh") should return 'd'

#*E.g.* first-non-repeat("wwwhhhggge") should return 'e'

#*E.g.* first-non-repeat("wwwhhhggg") should return false


## Optional
# If given a long string, this would take a fair chunk of computing power,
# as it would have to go over every character. Can you return on the first
# non-repeat, without checking every other letter?

def first_non_repeating(input)
  #break the input into an array (mah man leo)
  characters = input.chars
  #set an index to 0 so we can check further array elements in our loop
  i = 0
  found = false
  while !found
    found = true
    #loop through our array
    for char in characters
      #increment our counter with each iteration
      i = characters.index(char)
      #first non-match returns character
      if characters[i] != characters[i+1]
        return characters[i]
      end
    end
  end
  #no match returns false
  return false
end

# Test your code here
puts first_non_repeating("aaaabbbcccdeeefgh")
puts first_non_repeating("wwwhhhggge")
puts first_non_repeating("wwwhhhggg")
puts first_non_repeating("abbbccc")

# Task
# You are given a binary string (a string consisting of only '1' and '0').
# The only operation that can be performed on it is a Flip operation.

# It flips any binary character ( '0' to '1' and vice versa)
# and all characters to the right of it.

# For example, applying the Flip operation to the 4th character of string "1001010"
# produces the "1000101" string, since all characters from the 4th to the 7th are flipped.

# Your task is to find the minimum number of flips required to convert
# the binary string to string consisting of all '0'.

# Example
# For s = "0101", the output should be 3.

# It's possible to convert the string in three steps:

#  "0101" -> "0010"
#     ^^^
#  "0010" -> "0001"
#      ^^
#  "0001" -> "0000"

# 0111 0000

# 01110 00001
# 00001 00000

# 010101 001010
# 000101
# 000010
# 000001
# 000000

# 010111 001000 000111 # 000000


def bin_flip(s)
  string = s.chars
  flips = 0
  until string == ["0"]*string.length do
    for element in string
      if element == '1'
        string = slice_and_dice(string, string.slice!(string.index(element), string.length-1))
        flips += 1
        puts "string: #{string}"
        break
      end
    end
  end
  return flips
end

def slice_and_dice(remaining_array, sliced_array)
  new_remaining_array = remaining_array
  new_array = sliced_array
  new_array.map! { |e| e == '1' ? e = '0' : e = '1' }
  new_remaining_array = new_remaining_array.push(new_array)
  return new_remaining_array.flatten!
end

puts bin_flip("010101")

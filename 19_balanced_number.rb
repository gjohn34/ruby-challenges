
# A balanced number is the number that the sum of all digits to the left of the middle digit(s)
# and the sum of all digits to the right of the middle digit(s) are equal.

# If the number has an odd number of digits then there is only one middle digit,
# e.g. 92645 has middle digit 6; otherwise, there are two middle digits ,
# e.g. 1301 has middle digits 3 and 0

# The middle digit(s) should not be considered when determining whether a
# number is balanced or not, e.g 413023 is a balanced number because the
# left sum and right sum are both 5 ('30' are the middle digits).

# Number passed is always positive.

# Return a string "Balanced" or "Not Balanced"

# Examples

def balanced_num(number)
  sum1 = 0
  sum2 = 0
  #first we split the array.
  array = number.to_s.split('')
  #is the length of the number odd or even?
  if array.length % 2 == 0
    #if even, we sum in values of the indices before the middle
    (0..(array.length/2)-2).each do |i|
      sum1 += array[i].to_i
    end
    #and after middle
    ((array.length/2)+1..array.length).each do |i|
      sum2 += array[i].to_i
    end
  else
    #if odd, we sum the values before and after the middle again
    (0..(array.length/2)-1).each do |i|
      sum1 += array[i].to_i
    end
    ((array.length/2)+1..array.length).each do |i|
      sum2 += array[i].to_i
    end
  end
  #then we compare the two sums
  if sum1 == sum2
    return "Balanced"
  else
    return "Not Balanced"
  end
end


# balancedNum(7)
# => "Balanced"
# Explanation:
# Since, the sum of all digits to the left of the middle digit (0)
# and the sum of all digits to the right of the middle digit (0) are equal, then it's balanced.
# Note: The middle digit is 7.


# balancedNum(295591)
# => "Not Balanced"
# Explanation:

# Since, the sum of all digits to the left of the middle digits (11)
# and the sum of all digits to the right of the middle digits (10) are equal, then it's not balanced.
# Note: The middle digit(s) are 55.

# balancedNum(959)
# => "Balanced"
#Explanation:
# Since, the sum of all digits to the left of the middle digits (9)
# and the sum of all digits to the right of the middle digits (9) are equal, then it's balanced.
# Note: The middle digit is 5.

# balancedNum(27102983)
# => "Not Balanced"
# Explanation:
# Since, the sum of all digits to the left of the middle digits (10)
# and the sum of all digits to the right of the middle digits (20) are equal, then it's not balanced.
# Note : The middle digit(s) are 02.

# Interesting number

# An interesting number is one with at least 3 digits,
# in which the digits are either incrementing or decrementing.

# Examples:
# interesting_number(789) => true
# interesting_number(321) => true
# interesting_number(798) => false
# interesting_number(6) => false
# interesting_number(23) => false

# When the digits are incrementing, 0 comes after 9:
# interesting_number(7890) => true
# When the digits are decrementing, 0 comes after 1:
# interesting_number(3210) => true

def interesting_number(number)
  #check if the length is greater than 3 digits
  number_in_array = number.digits.reverse
  return false if number_in_array.length < 3
  increasing_numbers?(number_in_array)
  decreasing_numbers?(number_in_array)
end

def increasing_numbers?(numbers)
  index = 0
  0.upto(numbers.length-2) do |i|
    if numbers[i] == numbers[i+1] - 1
      index =+ 1
    else
      return false
    end
    if index == numbers.length
      return true
  end
end

def decreasing_numbers?(numbers)
  index = 0
  0.upto(numbers.length-2) do |i|
    if numbers[i] == numbers[i+1] + 1
      index =+ 1
    else
      return false
    end
    if index == numbers.length
      return true
  end
end


interesting_number(1234)

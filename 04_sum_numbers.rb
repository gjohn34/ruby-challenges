# Sum Numbers

# Write a method that will take an array of numbers,
# and return their sum.

def sum_numbers(numbers) # new method that takes 1 parameter
  array_total = 0 #beginning the sum at clean 0
  if numbers == [] # when provided an empty array default return is 0
    return nil #changed return value to nil
  else
    for number in numbers #iterating through array
      array_total += number #then adding that number to the total
    end
    return array_total
  end
rescue Exception => e
  puts e.class, "Invalid Input"
end








# Example:
puts sum_numbers([1,1,1]) #should return 3
puts sum_numbers([5,2,100,0,10]) #should return 117
puts sum_numbers([1,2, "Hello"])
#puts sum_numbers([2,4, "Goodbye"])
puts sum_numbers([])

# Check your solution by running the tests:
# ruby tests/04_sum_numbers_test.rb

# OPTIONAL:
# Go to the tests folder and open 04_sum_numbers_test.rb.
# Read over the tests and see if you can understand them.

# Try add at least three more tests, and test at least 2 corner cases.

# Hint:
# You could test what happens when you call sum_numbers([])?

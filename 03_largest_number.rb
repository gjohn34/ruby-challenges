# Write a method that will take two numbers,
# and return whichever is the largest.
def largest_number(num1,num2)
  if !num1.is_a?(Numeric) or !num2.is_a?(Numeric)
    puts "Convert to integer first"
  elsif num1 > num2
    puts num1
  elsif num2 < num1
    puts num2
  elsif num1 == num2
    puts "Buddy, can't you tell those are both equal to each other?"
  end
end


# Beast Mode:
# If you complete the challenge, feel free to come up
# with your own examples and test corner cases.
#
# Examples - what if both numbers are equal or are strings?

largest_number(100,50)
largest_number(25,25)
largest_number("five", 25)
largest_number(30, "sixty")

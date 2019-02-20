# Write a program that accepts someone's name and age, and responds
# as shown here:

def pluralize(number, text)
  if number == 1
    "#{number} #{text}"
  else
    "#{number} #{text}s"
  end
end

puts "Hello, friend."

puts "Whats ya name?"

name = gets.chomp

puts "Hi #{name}, How old are you?"

age = gets.chomp.to_i

puts "Wow! You are " + pluralize(age, 'year') + " old. Congratulations!"

puts "#{name}, in #{100 - age} years you will be 100 years old!"

# You have to stop the infamous hackerman by writing a basic security program.

# Your task is to write a program which will ask the user for input twice.
# Both times should ask the user to type words and will display the FIRST input.

# However if any of the words in the second input match with a word from the
# first input it should say "HIDDEN" instead of the matched word.

def replace_with_hidden()
  puts "first_input"
  first_input = gets.chomp.downcase
  puts "second_input"
  second_input = gets.chomp.downcase
  first_input_split = first_input.split(' ')
  second_input_split = second_input.split(' ')
  for word in second_input_split
    if first_input_split.include?(word)
      second_input_split[second_input_split.index(word)] = "HIDDEN"
    end
  end
  return second_input_split.join(' ')
end

puts replace_with_hidden


# Beast mode:
# Does your code deal with capital letters? Update your solution so that
# they will be downsized if they are input but HIDDEN remains capitalised.

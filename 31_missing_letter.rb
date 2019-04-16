# Missing letter
# Difficulty: medium/hard

# Write a method that takes an array of consecutive (increasing)
# letters as input and that returns the missing letter in the array.

# You will always get an valid array. And it will be always exactly
# one letter be missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.

# Example:

# missing_letter(['a','b','c','d','f']) -> 'e'
# missing_letter(['O','Q','R','S']) -> 'P'

# Included test uses rspec

def missing_letter(word)

  #easy mode
  def easy_mode(parameter)
    new_word = parameter.join.succ
    return new_word[-1]
  end

  #fuck me hard mode
  def hard_mode(wrd, alph)
    for character in wrd
      for letter in alph
        return letter if !wrd.include?(letter)
      end
    end
  end
  
  alphabet = ('a'..'z').to_a

  is_capital = word[0] == word[0].upcase ? true : false
  is_capital == true ? alphabet.map!{|e| e.upcase} : alphabet.map!{|e| e.downcase}

  new_alphabet = alphabet.drop_while {|i| !(i == word[0])}.reverse.drop_while {|i| !(i == word[-1])}.reverse

  result = word == new_alphabet ? easy_mode(word) : hard_mode(word, new_alphabet)


  #loop through every letter in the word
  # => then loop through every character in the alphabet
  # => find the first match then remove all previous elements in the alphabet and break the loop
  #then reverse the word and loop
  # => then loop through the alphabet again and find the last letter in the word in the alphabet
  # => then remove all future elements from the alphabet
  #so we should have a word and an alphabet that starts and finishes in the same place
  # last loop through word
  # => last loop through alphabet
  # => if letter isn't in alphabet it is the missing letter
  # => if the loop completes without a missing letter
  # => # => we find the find the index of the last letter in word on the original alphabet and return the next one





end

puts missing_letter(['l','m','n','o','p'])
puts missing_letter(['L','M','N', 'O', 'P','Q'])
puts missing_letter(['L','M','N','P','Q'])

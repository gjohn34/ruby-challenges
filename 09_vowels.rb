# Vowels
# Write a method that will take a string and
# return an array of vowels used in that string.

def count_vowels(string, vowels = ['a','e','i','o','u', 'A', 'E','I','O','U'])
  string_array = string.split('')
  vowels_in_string = []
  for character in string_array
    for vowel in vowels
      if character == vowel
        vowels_in_string.push(character)
      end
    end
  end
  return vowels_in_string
end


# Example:
count_vowels("The quick brown fox") #should return ["e","u","i","o","o"]
count_vowels("Hello World") #should return ["e","o","o"]

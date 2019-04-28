# Write a class that implements the Caesar cipher.
# (http://practicalcryptography.com/ciphers/caesar-cipher/)
#
# When given a string, will return an uppercase string with each letter shifted
# forward in the alphabet by however many spots the cipher was initialized to.
#
# For example:
#
# c = CaesarCipher.new(5); # creates a CipherHelper with a shift of five
# c.decode('BFKKQJX') # returns 'WAFFLES'
#
# If the shift pushes beyond the end of the alphabet, start back at 'A'
# Example:
# c = CaesarCipher.new(1)
# c.encode('ZOO') # returns 'APP'
#
# If something in the string is not in the alphabet (e.g. punctuation, spaces), simply leave it as is.
#
# The shift will always be in range of [1, 26].

class CaesarCipher
  def initialize(shift)
    @shift = shift
    @alph = *('A'..'Z')
  end

  def encode(string)
    code = string.upcase.chars
    index = 0
    for char in code
      if @alph.include?(char)
        if @alph.index(char) + @shift > 25
          code[index] = @alph[@alph.index(char) + @shift-26]
        else
          code[index] = @alph[@alph.index(char)+@shift]
        end
        index += 1
      end
    end
    return code.join
  end

  def decode(string)
    code = string.upcase.chars
    index = 0
    for char in code
      if @alph.include?(char)
        if @alph.index(char) == 0
          code[index] = @alph[-@shift]
        else
          code[index] = @alph[@alph.index(char)-@shift]
        end
        index += 1
      end
    end
    return code.join
  end
end

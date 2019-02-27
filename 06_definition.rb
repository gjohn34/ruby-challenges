class Definition
  #emtpy hash of dictionary is created
  def initialize
    @dictionary = Hash.new
  end
  #adding a word and its definition to the hash
  def add_word(word, definition)
    @dictionary[word] = definition
  end
  #putting value of word key
  def lookup(word)
    @dictionary[word]
  end
  #putting length of hash
  def total_words
    @dictionary.keys.length
  end
end

#self tests

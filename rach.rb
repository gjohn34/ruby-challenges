def missing_letter(word)

    index = 0
    while index < (word.length - 1)
        if word[index].succ == word[index +1]
            index +=1
        else
            return word[index].succ
            index += 1
        end
    end
end

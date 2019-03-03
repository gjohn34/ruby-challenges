def included_once(array, string)
  string_count = 0 #beginning of counter starting at 0
  for element in array #looping through array
    if element == string #if string and array element match we add one to counter
      string_count += 1
    end
  end
  if string_count == 1 #at the end of the counter if it is equal to 1 we
    return true #return true
  else
    return false #or return false
  end
end
#
# What's the time complexity of your solution? Can it be improved?
# Simple for loop that adds to a counter, all we want to do is check if a string occurs only once
# *** Whiteboard this first ***
#
# Difficulty: 4/10
#
# Example:
puts included_once(['hello','hi','hi', 'hi', 'hi'], 'hi') #-> false
puts included_once(['hello','hi','hey'], 'hi') #-> true
#
# Check your solution by running the tests:
# ruby tests/14_included_once_test.rb
#

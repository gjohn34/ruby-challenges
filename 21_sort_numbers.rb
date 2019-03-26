# Sorting algorithms are a key tool in programming.
#
# Write an algorithm that will sort an array of numbers
# in ascending order.
# Do not use the .sort method - the idea is that you write
# your own sort method.
#
# Use hand simulation or pythontutor.com to determine how
# many times your solution visits each element of the array
# in a worse case scenario. If your array has 10 elements for example,
# in a worse case situation does your algorithm examine each element
# once? Twice? More? Less?
#
# This will help you begin to understand order of complexity
# of algorithms.
#
# Optional:
# Look up explanations of common sorting algoithms
# like bubble sort and quick sort. Don't look up code, just look up the
# explanations and see if you can implement one of those.
# Which one is your favourite and why?
#
# Example input: [2,5,4,8,2]
# Expected output: [2,2,4,5,8]

def bubble_sort(list)
  return list if list.size <= 1 # an array of one element is already sorted
  swapped = true #swapped begins at true
  while swapped do #while swapped == true
    swapped = false #we set swapped to false to exit while loop after array loop
    0.upto(list.size-2) do |i| #loop through array except for the last two elements
      if list[i] > list[i+1] #compare element with next element
        list[i], list[i+1] = list[i+1], list[i]  #swap elements
        swapped = true #set swapped to true to begin loop again
      end
    end
  end

  list #return sorted list
end


def selection_sort(array)
  n = array.length - 1

  0.upto(array.length - 1) do |i|
    smallest = i

    (i + 1).upto(n) do |j|
      smallest = j if array[j] < array[smallest]
    end
    array[i], array[smallest] = array[smallest], array[i] if i != smallest
  end
  return array
end


puts selection_sort([7,5,4,8,6])

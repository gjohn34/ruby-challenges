# Group by owners
# Implement a group_by_owners function that:
# Accepts a hash containing the file owner name for each file name.
# Returns a hash containing an array of file names for each owner name, in any order.

# Example:
# group_by_owners({'Input.txt' => 'Randy', 'Code.py' => 'Stan', 'Output.txt' => 'Randy'}
# should return {'Randy' => ['Input.txt', 'Output.txt'], 'Stan' => ['Code.py']}

# Have a look at the tests and take note of the different expect assertions used.
# Using these assertions allows testing without expecting a particular order of the files
# in the lists for each owner.

def group_by_owners(input)
  output_hash = {}
  for key, value in input
    if output_hash[value] == nil
      output_hash[value] = []
      output_hash[value].push(key)
    else
      output_hash[value].push(key)
    end
  end
  return output_hash
end

def group_by_owners_ternery(input)
  output_hash = {}
  input.each {|key, value| output_hash[value] == nil ? (output_hash[value] = []; output_hash[value].push(key)) : (output_hash[value].push(key))}
  return output_hash
end

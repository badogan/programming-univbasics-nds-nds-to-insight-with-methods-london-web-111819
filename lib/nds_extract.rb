require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {} ; outer_index = 0 
  while outer_index < nds.length do
    result[nds[outer_index][:name]] = gross_for_director(nds[outer_index])
    outer_index += 1 
  end
  return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  inner_index = 0 ; result_for_current_director = 0 
  while inner_index < director_data[:movies].length do
    result_for_current_director += director_data[:movies][inner_index][:worldwide_gross]
    inner_index += 1 
  end
  return result_for_current_director
end

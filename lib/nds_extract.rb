require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  vm = directors_database
  outer = 0 
  while outer < vm.length do
    result[vm[outer][:name]] = gross_for_director(vm[outer])
    outer += 1 
  end
  return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  inner = 0
  result_for_current_dir = 0 
  while inner < director_data[:movies].length do
    result_for_current_dir = result_for_current_dir + director_data[:movies][inner][:worldwide_gross]
    inner += 1 
  end
  return result_for_current_dir
end

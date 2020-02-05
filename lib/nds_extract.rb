$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  #pp director_data
  vm = director_data
  i = 0
  total = 0
  while i < vm[:movies].length do 
    total += vm[:movies][i][:worldwide_gross]
    i += 1
  end
  return total
end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)  #nds has multiple directors in
  # pp nds
  result = {}
  total = gross_for_director() #this returns a scalar
  
  result[nds[:name]] = total
  return result

end



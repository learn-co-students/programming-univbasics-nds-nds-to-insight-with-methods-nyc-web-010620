require 'directors_database'



# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  results = {}
  count = 0
  while count < nds.size
    results[director][:name] = gross_for_director(director)
  end
  results
  
  nil 
end 



# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0 
  index = 0
  
  while index < director_data[:movies].length
    total += director_data[:movies][index][:worldwide_grosses]
    index += 1 
  end
  
total
end

$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  i = 0
  gross = 0
while director_data[:movies][i] do
  gross += director_data[:movies][i][:worldwide_gross]
  i += 1
end
return gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  i=0
  result = {}
  while nds[i] do
    result[nds[i][:name]] = gross_for_director(nds[i])
    i+=1
  end
  return result
  end

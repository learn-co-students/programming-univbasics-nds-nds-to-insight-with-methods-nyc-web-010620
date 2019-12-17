require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  counter = 0 
  while counter < nds.length
    director_data = nds[counter]
    director_name = nds[counter][:name]
    result[director_name] = gross_for_director(director_data)
    counter += 1 
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movie_counter = 0 
  director_gross = 0
  while movie_counter < director_data[:movies].length 
    director_gross += director_data[:movies][movie_counter][:worldwide_gross]
    movie_counter += 1
  end
  director_gross
end

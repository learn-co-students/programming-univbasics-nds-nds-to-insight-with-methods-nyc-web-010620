$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
#first_director_name = directors_database.first.values.first
#puts first_director_hash = directors_database.find{ |x| x[:name] == first_director_name }

def gross_for_director(director_data)
  movie_index = 0
  director_total = 0
  while movie_index < director_data[:movies].length do
    director_total += director_data[:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  return director_total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_index = 0
  while director_index < nds.length do
    director_name = nds[director_index][:name]
    result[director_name] = gross_for_director(nds[director_index])
    director_index += 1
  end
  result
end

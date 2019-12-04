require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  for director in nds do
    result[director[:name]] = gross_for_director(director)
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movie_grosses = []
  for movie in director_data[:movies] do
    movie_grosses << movie[:worldwide_gross]
  end
  movie_grosses.sum
end

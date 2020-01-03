$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  i = 0;
  total = 0;
  director_movie = director_data[:movies]
  while i < director_movie.length do
    total += director_movie[i][:worldwide_gross]
    i += 1
  end
  return total

end

# Write a method that, given an NDS creates a new   Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  row_index = 0;
    while row_index < nds.count do
      director_name = nds[row_index][:name]
      total_gross_for_director = gross_for_director(nds[row_index])
      result[director_name] = total_gross_for_director

      row_index += 1

    end
    puts result
    return result

end

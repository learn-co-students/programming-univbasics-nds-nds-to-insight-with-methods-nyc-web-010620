require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

require "pry"

def directors_totals(nds)
  result = {}
  director_index = 0
  while director_index < nds.size do
    director = nds[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(hash)
  total = 0
  index = 0

  while index < hash[:movies].length do
    total += hash[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end


# def gross_for_director(nds)
#   row_index = 0 
#   total = 0 
#   while row_index < nds.length do 
#     element_index = 0 
#       while element_index < nds[row_index][:movies].length
#       total += nds[row_index][:movies][element_index][:worldwide_gross]
#       element_index += 1 
#       end 
#     row_index += 1 
#   end 
#   total
# end



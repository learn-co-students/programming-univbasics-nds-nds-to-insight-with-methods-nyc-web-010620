require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

directors=
      {
        "Stephen Spielberg"=> 1357566430,
        "Russo Brothers"=> 2281002470,
        "James Cameron"=>2571020373,
        "Spike Lee" =>256624217,
        "Wachowski Siblings" =>806180282,
        "Robert Zemeckis" =>1273838385,
        "Quentin Tarantino"=>662738268,
        "Martin Scorsese"=>63681224,
        "Francis Ford Coppola" => 509719258
      }
      def directors_totals(nds)
      total =0 
        column_index = 0 
        while column_index< nds[row_index].lenght do
        total += nds[row_index][column_index]
        column_index+=1 
      end
      total
    end
    
    
    def gross_for_director(director_data) 
    grand_total = 0 
      row_index = 0 
      while row_index< directors.lenght do
        column_index = 0 
        while column_index< directors[row_index].lenght do
        grand_total += directors_totals(nds)
        column_index+=1 
      end
      row_index+=1 
  
end

#def directors_totals(nds)
  result = {}
  #nil
#end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
#def gross_for_director(director_data)
#end

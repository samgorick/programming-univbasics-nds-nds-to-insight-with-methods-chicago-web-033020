$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movie_index = 0
  director_total = 0
  while movie_index < director_data[:movies].length
    director_total += director_data[:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  director_total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
directors = 0
result = {}

  while directors < nds.length do
    specific_director = nds[directors]
    name_of_director = nds[directors][:name]
    result[name_of_director] = gross_for_director(specific_director)
    directors +=1
  end
  result
end
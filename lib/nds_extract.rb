$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'

#pp directors_database

#def directors_totals(nds)
#   total = {}
#   i = 0
#   while i < nds.length do
#     director = nds[i][:name]
#     total[director] = 0
#     i2 = 0
#     while i2 < nds[i][:movies].length do 
#       gross = nds[i][:movies][i2][:worldwide_gross]
#      #binding.pry
#       total[director] +=  gross
#       i2 += 1
#     end
#     i += 1 
#   end
#  return total 
#end
 

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

# directors_name = directors_database[i][:name]
# gross = directors_database[i][:movies][i2][:worldwide_gross]
# director_data = directors_database[0]

def gross_for_director(director_data)
  total = 0 
  i = 0 
  while i < director_data[:movies].length do 
    total += director_data[:movies][i][:worldwide_gross]
    i += 1 
  end 
  total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
def directors_totals(nds)
   total = {}
   i = 0
   while i < nds.length do
     director = nds[i][:name]
     total[director] = gross_for_director(nds[i])
     i += 1 
   end
  return total 
end

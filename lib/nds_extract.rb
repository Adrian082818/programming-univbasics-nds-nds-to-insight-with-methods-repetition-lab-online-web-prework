$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  # Write this implementation
  
end 

def total_gross(source)
  grand_total = 0 
  row_index  = 0 
  directors = list_of_directors(source)
  while row_index < directors.length do
    totals = directors_totals(source)
    grand_total += totals[directors[row_index]]
    row_index += 1 
  end 
return grand_total
end 

 

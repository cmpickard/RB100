movies = {
  :movie1 => 1998,
  :movie2 => 2012,
  :movie3 => 1945,
  :movie4 => 1970}

array = []

movies.each do |k,v|
  array << v
end
puts array


#^ that works fine, but
#I misunderstood the assignment, so here's another shot at it:

array = [1998, 2012, 1945, 1970]
array.each { |i| puts i } 
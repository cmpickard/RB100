x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end
# the each method will return the original array
# That's just what each does: it always returns the array
# that it was called on.
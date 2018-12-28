def solutions(a, k)
  # a = [1,2,3,4,5]

  # k = 6
  b = a
  
  size = a.length
  if size > 0
    rotate_count = k % size 
    b = a.rotate(rotate_count*-1)
  end
  return b
end

############################
  puts solutions([], 1)
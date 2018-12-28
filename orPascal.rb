def solutions(p)
  p = [true, false, true, true, false, false, true, false]
  temp_arr = p
  positive_count = 0
  limit = 100000
  return nil if p.length > limit

  p.each { |val| positive_count += 1 if val }

  while temp_arr.length > 1
    p = temp_arr
    length = p.length
    temp_arr = []

    for i in 0..(length-2)
      result = p[i] || p[i+1]
      temp_arr << result
      if result == true
        positive_count += 1
      end
    end

  end
  # puts positive_count
  return positive_count

end

############################
if ARGV.length > 0
  puts solutions(ARGV)
else
  puts "Invalid Parameters"
end
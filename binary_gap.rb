def solutions(n)
  n = n.to_i()
  count = 0
  gap = 0
  limit = 2147483647
  opening_one = false
  return 0 if n > limit
  
  binary = n.to_s(2);
  puts "converted binary is: " + binary
  arr = binary.split('')
  arr.each { |val|
    if (val == '1')
      if (opening_one && count != 0)
        gap = count  if count > gap
      elsif !opening_one
        opening_one = !opening_one
      end
      count = 0
    elsif (val == '0' && opening_one)
      count += 1
    end
  }

 return gap
end

############################
if ARGV.length > 0
  puts solutions(ARGV.first)
else
  puts "Invalid Parameters"
end
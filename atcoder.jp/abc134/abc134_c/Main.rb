n = gets.to_i
a = []
n.times do |i|
  a[i] = gets.to_i
end

b = a.dup.sort
m = b.last
nm = 0

if b[-2] == m
  nm = m
else
  nm = b[-2]
end

a.each_with_index do |e, i|
  if a[i] == m
    puts nm
  else
    puts m
  end
end
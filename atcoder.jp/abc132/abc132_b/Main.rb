n = gets.to_i
p = gets.split.map(&:to_i)
c = 0

p.each do |i|
  if i > 0 && i < p.length - 1
    pp = [p[i-1], p[i], p[i+1]].sort
    c += 1 if pp[1] == p[i]
  end
end

puts c
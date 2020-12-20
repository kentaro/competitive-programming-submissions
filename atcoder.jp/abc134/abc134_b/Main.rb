n, d = gets.split.map(&:to_i)
s = 0
c = 0

while s < n
  s += (d * 2 + 1)
  c += 1
end

puts c
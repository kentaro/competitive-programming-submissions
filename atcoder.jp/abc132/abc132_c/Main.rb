n = gets.to_i
d = gets.split.map(&:to_i).sort
c = 0

f = d[0..(d.count/2 - 1)]
l = d[(d.count/2)..(d.count - 1)]

if f.last == l.first
  c = 0
else
  c += Range.new((f.last + 1), l.first).count
end

puts c

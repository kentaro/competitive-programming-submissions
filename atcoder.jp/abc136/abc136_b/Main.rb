n = gets.to_i
c = 0

1.upto(n) do |i|
  if i.to_s.size % 2 == 1
    c += 1
  end
end

puts c
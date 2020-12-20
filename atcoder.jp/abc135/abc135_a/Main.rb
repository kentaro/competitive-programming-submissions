a, b = gets.split.map(&:to_i)
r = 'IMPOSSIBLE'

if (a % 2) != (b % 2)
  r = 'IMPOSSIBLE'
else
  r = (a + b)/2
end

puts r
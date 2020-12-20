k, x = gets.split.map(&:to_i)
r = []

r = Range.new(x-(k-1), x+(k-1))
puts r.to_a.join(' ')
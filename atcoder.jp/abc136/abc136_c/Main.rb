n = gets.to_i
h = gets.split.map(&:to_i)
r = n.times.map {|i| 0}

def sorted?(a)
  a.each_cons(2).all? {|a, b| a <= b }
end

n.times do |i|
  if i == h.length - 1
  elsif h[i+1] == h[i]
  elsif h[i] > h[i+1]
    h[i] -= 1 if r[i] == 0
    r[i] = 1
  elsif h[i+1] > h[i]
    h[i+1] -= 1 if r[i+1] == 0
    r[i+1] = 1
  end
end

puts (sorted?(h) ? 'Yes' : 'No')

n = gets.to_i
a = gets.split.map(&:to_f)

puts (1 / (a.inject(0) {|r,n| r += 1/n; r}))
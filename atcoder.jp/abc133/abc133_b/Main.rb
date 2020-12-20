n, d = gets.split.map(&:to_i)
x = readlines.map {|l| l.split.map(&:to_i) }
c = 0
m = []

x.each_with_index do |y, i|
  break if i == (x.length - 1)
  m [i] ||= []
  n.times do |j|
    m[j] ||= []
    next if m[i][j] == 1 || m[j][i] == 1
    next if i == j
    z = y.zip(x[j])
    p = Math.sqrt(z.inject(0) {|r,e| r += (e.first - e.last).abs ** 2; r })
    c += 1 if Math.sqrt(z.inject(0) {|r,i| r += (i.first - i.last).abs ** 2; r }).to_s.match(/\.0$/)
    m[i][j] = 1
    m[j][i] = 1
  end
end

puts c
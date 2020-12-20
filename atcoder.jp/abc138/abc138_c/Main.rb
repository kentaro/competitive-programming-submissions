n = gets.to_i
v = gets.split.map(&:to_f).sort

v.each_with_index do |e,i|
  break if i == v.length - 1
  v[i+1] = ((e + v[i+1])/2).to_f
end

puts v.last
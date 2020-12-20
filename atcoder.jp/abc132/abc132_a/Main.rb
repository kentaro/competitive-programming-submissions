s = gets.chomp
puts s.split('').uniq.count == 2 ? 'Yes' : 'No'
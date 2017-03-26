# counter = gets.chomp.to_i
#
# while counter > 0
#   counter -= 1
#   puts "#{counter}"
# end

counters = gets.chomp.to_i

for counter in (counters).downto(0)
  counters -= 1
  puts "#{counter}"
end

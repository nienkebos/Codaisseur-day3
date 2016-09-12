eggs = [1,2,3,4,5,6]

for egg in eggs
  puts "Break #{egg}."
end

#for counter in 1..6
#puts "Break egg #{counter}"
#end

# puts "Please enter a number between 1 and 20:"
# i = gets.chomp.to_i
#
# for i in 1..20
#   i = i - 1
#   puts i
# end

puts "Please enter a number:"
i = gets.chomp.to_i

for x in i.downto(0) #.downto is aftellen
  puts x
end

fruits = ["apples", "oranges", "pears", "apricots"]

fruits.each {|fruit| puts "I love: #{fruit}!"}


# numbers = []
#
#
# numbers.each do |number|
#   number = 1
#   numbers.push
#   puts "Number #{number} added to the list."
# end

numbers = []

(1..5).each do |i| #between pipes: new variable: each of 1 tm 5 to i
  puts "Adding #{i} to the list."
  numbers.push(i) #(i) is een argument, de push method accepts an argument.
end

numbers.each {|x| puts "Number was: #{x}"}


#print each index and value of the array with each_with_index
fruits = ["appel", "peer", "banaan", "druiven", "kiwi"]
fruits.each_with_index do |item, index|
  puts "#{index}, #{item}"
end

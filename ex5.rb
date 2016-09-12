def question(msg)
  puts msg
  gets.chomp
end


# what is the list name
list_name = question('what is the list name?')
list_array = []

i = 0;

loop do

  if i < 3
    # what is the item called?
    item_name = question('What is the  item name?')
    # How much?
    how_much = question('How much?')
    list_array.push('Item:' + item_name + ' Quantity:' + how_much)
    i += 1
  else
    break
  end
end

puts "Here is your list:"
puts "List: #{list_name}"
puts "----------------"
puts list_array
puts "----------------"

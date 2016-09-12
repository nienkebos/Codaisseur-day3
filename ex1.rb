counter = 0
loop do
  counter = counter + 2
  if counter == 4
    next
  end
  if counter > 10
    break
  end
  puts counter #don't need interpolation
end

#Solution Miriam
i = 0
loop do
  i += 2 #shorter than mine
  if i == 4
    next
  end
  puts i
  if i == 10
    break
  end
end

#part III of the exercise

loop do
    def question(msg)
    puts msg
    gets.chomp
  end
  answer = question("Got all the ingredients you need (y/n)?")
  if
    answer == "y"
    break
  end
end

#Solution Miriam
loop do
  puts "Got all the ingredients you need (Y/N)?"
  answer = gets.chomp.upcase

  if answer == 'N'
    puts "Let's go shopping!\n..."
  elsif answer == 'Y'
    puts "Let's start cooking!"
    break
  end
end

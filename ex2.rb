i = 0
while i < 6
  i += 1
  puts "Break egg #{i}."
end

i = 6
while i > 0
  puts i
  i -= 1
end

#Juiste antwoord; ik had de opdracht niet goed gelezen.
puts "Please enter a number:"
x = gets.chomp.to_i

while x >= 0
  puts x
  x-= 1
end

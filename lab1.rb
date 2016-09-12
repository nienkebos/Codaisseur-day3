def print_divider
  puts "*" * 60
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

NUM_BANAAN = 2
NUM_EI = 2

ingredients = [
  {name: 'havermout', quantity: '70 gram'},
  {name: 'banaan', quantity: NUM_BANAAN},
  {name: 'ei', quantity: NUM_EI},
  {name: 'sojamelk', quantity: 'scheutje'},
  {name: 'olie', quantity: '4 eetlepels'},
  {name: 'bevroren fruit van de ah', quantity: '250 gram'}
]

puts "*    Vandaag bakken we bananenpannekoekjes!    *"
print_divider

puts "Je hebt de volgende ingredienten nodig (voor 2 porties):"

ingredients.each do |ingredient|
  puts "* #{ingredient[:name]}, #{ingredient[:quantity]}"
end

loop do
  puts "\n"
  print_divider

  puts "Heb je de ingredienten in huis? (Ja/Nee)"
  answer = gets.chomp.downcase

  if answer == 'nee'
    puts "Dan gaan we eerst even shoppen."
    print_progress_bar
  elsif answer == 'ja'
    puts "Top, we gaan aan de slag!"
    break
  else
    puts "Sorry, ik begrijp je niet helemaal, probeer het nog eens."
  end
end

puts "\n"
print_divider

steps = [
  {description: "Maal de havermout fijn in de blender", action: "algemene_stap"},
  {description: "Breek de eieren en voeg toe aan de havermout", action: "breek_ei"},
  {description: "Breek de bananen in kleinere stukjes en doe in de blender", action: "banaan_toevoegen"},
  {description: "Schenk een scheutje sojamelk in de blender", action: "algemene_stap"},
  {description: "Blend de ingredienten tot een glad mengsel", action: "algemene_stap"},
  {description: "Verhit de olie in een koekenpan", action: "algemene_stap"},
  {description: "Giet het mengsel in de koekenpan, je kan ongeveer 4 pannenkoekjes bakken", action: "algemene_stap"},
  {description: "Bak de pannenkoekjes op laag vuur, er gaan 2 pannenkoekjes in een pan", action: "algemene_stap"},
  {description: "Verwarm ondertussen het fruit in een steelpannetje", action: "algemene_stap"},
  {description: "Draai de pannenkoekjes om", action: "algemene_stap"},
  {description: "Bak de pannenkoekjes tot ze goudbruin zijn ", action: "algemene_stap"},
  {description: "Serveer de pannenkoekjes met het warme fruit", action: "algemene_stap"},
]

puts "Volg onderstaande stappen voor een heerlijk ontbijt:"
puts "\n"

steps.each_with_index do |stap, index|
  puts (index + 1).to_s + ". " + stap[:description]
end

def algemene_stap
  puts "Hup hup!"
  print_progress_bar
end

def breek_ei
  counter = 0
  while counter < NUM_EI
    counter += 1
    puts "Breek ei #{counter} en doe in de blender"
    print_progress_bar
  end
end

def banaan_toevoegen
  counter = 0
  while counter < NUM_BANAAN
    counter += 1
    puts "Breek banaan #{counter} in stukjes en doe in de blender"
    print_progress_bar
  end
end

def ask_if_ready(stap, index)
  puts "Ben je klaar voor stap #{index + 1}?\n(#{stap[:description]})"
  answer = gets.chomp

  answer.upcase == 'Y'
end

steps.each_with_index do |stap, index|
  print_divider

  loop do
    ready = ask_if_ready(stap,index)
    break if ready

    puts "Ok, we wachten tot je klaar bent."
    print_progress_bar
  end

  send(stap[:action])
end

print_divider
puts "Goed gedaan, eetsmakelijk en een fijne dag!"

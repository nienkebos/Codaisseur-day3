def print_divider
  puts "*" * 60
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end


#Define empty shopping_cart
#------------------------------------------------------------
@shopping_cart = []

# List of products
#------------------------------------------------------------
@products = [
  {referencenumber: 111, name: 'bracelet gold', price: 50},
  {referencenumber: 112, name: 'earring cube', price: 13},
  {referencenumber: 113, name: 'earring feather', price: 18},
  {referencenumber: 114, name: 'ring ruby', price: 80},
  {referencenumber: 115, name: 'ring silver', price: 15},
  {referencenumber: 116, name: 'necklace wood', price: 17},
  {referencenumber: 117, name: 'necklace locker', price: 74},
]

#Welcome the user and print out a list of products
#-----------------------------------------------------------
def question(msg)
  puts msg
  gets.chomp
end

name = question("Hi there, what's your name?").capitalize
puts "Welcome to my store #{name}! Please take a look around."

@products.each do |product|
  puts "#{product[:referencenumber]}. #{product[:name]} (EUR #{product[:price]})"
end

#Select product by referencenumber and add to shopping_cart
#-----------------------------------------------------------
@total_amount = 0

def choose_product
  chosen_product = question("What would you like to order (please fill in reference number)?").to_i
  @products.each do |product|
    if chosen_product == product[:referencenumber]
      @shopping_cart << product
      @total_amount += product[:price].to_f
      puts "Added to shopping cart #{product[:name]}."
      puts "Total price of your purchase is: #{@total_amount}."
    end
  end
end


loop do
  choose_product
  buy_more = question("Would you like to continue shopping? (Y/N)").upcase
  if buy_more == 'Y'
    choose_product
  elsif buy_more == 'N'
    puts "Thank you for your order. You bought:"
    @shopping_cart.each do |item|
      puts "#{item[:name]}, EUR #{item[:price].to_f}"
    end
    puts "Total price: #{@total_amount}"
    break
  end
end

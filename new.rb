
def get_name
puts "What's your name?"
gets.chomp
end

def get_age
puts "How old are you?"
gets.chomp
end

def get_gender
puts "What's your gender (m/f)?"
gets.chomp
end

def calc_year(get_name, get_age, get_gender)

    if "#{get_gender}" == "m"
        puts "Good morning Mr. #{get_name}!"
    else
        puts "Good morning Ms. #{get_name}!"
    end

    time = Time.new

    year_hundred = time.year + (100 - "#{get_age}".to_i)

    puts "You will be 100 in the year: #{year_hundred}."

end

calc_year(get_name, get_age, get_gender)

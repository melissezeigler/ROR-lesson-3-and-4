person = {}

# for first name
print "Enter your first name: "
person[:first_name] = gets.chomp

# for last name
print "Enter your last name: "
person[:last_name] = gets.chomp

# for age
print "Enter your age: "
person[:age] = gets.chomp.to_i

# for street address
print "Enter your street address: "
person[:street_address] = gets.chomp

# for city
print "Enter your city: "
person[:city] = gets.chomp

# for state
print "Enter your state: "
person[:state] = gets.chomp

puts "\nPerson Hash:"
puts person.values

# Capitalization
person[:first_name] = person[:first_name].capitalize
person[:last_name] = person[:last_name].capitalize
person[:city] = person[:city].capitalize

# for state upcase
person[:state] = person[:state].upcase

puts "\nModified Person Hash:"
puts person

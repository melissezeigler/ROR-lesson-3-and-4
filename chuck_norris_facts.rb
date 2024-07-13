require 'faker'

loop do
  puts "Hi! Do you want to know a fact about Chuck Norris? (say 'yes' to continue, 'no' to exit)"
  answer = gets.chomp.downcase
  if answer == 'yes'
    puts Faker::ChuckNorris.fact
  elsif answer == 'no'
    puts "Good-bye"
    break
  else
    puts "Please answer with 'yes' or 'no'."
  end
end


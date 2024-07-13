def random_game
  secret_number = rand(1..100)
  loop do
    print "Enter your number guess from 1-100: "
    guess = gets.chomp
    guess_num = guess.to_i

    if guess.strip.empty? || guess_num.to_s != guess.strip || guess_num == 0
      puts "Your guess is invalid. Enter only a number between 1 and 100."
      next
    end

    if guess_num < secret_number
      puts "Too low!!!"
    elsif guess_num > secret_number
      puts "Too high!!!"
    else
      puts "Correct! The secret number was #{secret_number}."
      break
    end
  end
end

def play_again
  print "Do you want to play again? Enter only 'y' or 'n'."
  answer = gets.chomp.downcase
  answer == "y"
end

loop do
  random_game
  break unless play_again
end

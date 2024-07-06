class NumberGuesser
  def initialize
    @low = 1
    @high = 100
    @guess = nil
  end

  def think
    puts "Think of a number between 1 and 100."
    loop do
      make_guess
      response = gets.chomp.downcase
      case response
      when "too low"
        handle_too_low
      when "too high"
        handle_too_high
      when "correct"
        puts "I guessed it! Do you want to play again? Enter yes or no:"
        play_again = gets.chomp.downcase
        break unless play_again == "yes"
        reset_game
      else
        puts "Please respond with too low, too high, or correct."
      end
    end
  end

  private

  def make_guess
    @guess = (@low + @high) / 2
    puts "Is your number #{@guess}? (Respond with too low, too high, or correct)"
  end

  def handle_too_low
    if @guess >= @high
      puts "You're lying! Let's start over!"
      reset_game
    else
      @low = @guess + 1
    end
  end

  def handle_too_high
    if @guess <= @low
      puts "You're lying! Let's start over!"
      reset_game
    else
      @high = @guess - 1
    end
  end

  def reset_game
    @low = 1
    @high = 100
    @guess = nil
    puts "Think of a number between 1 and 100."
  end
end

guesser = NumberGuesser.new
guesser.think

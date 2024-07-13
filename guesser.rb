class NumberGuesser
  def initialize
    @low = 1
    @high = 100
    @guess = nil
    @previous_guesses = []
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
        puts "Please respond with 'too low', 'too high', or 'correct'."
      end
    end
  end

  private

  def make_guess
    @guess = (@low + @high) / 2
    puts "Is your number #{@guess}? (Respond with 'too low', 'too high', or 'correct')"
    @previous_guesses << @guess
  end

  def handle_too_low
    if @guess >= @high
      call_out_lie
    else
      @low = @guess + 1
      detect_lies
    end
  end

  def handle_too_high
    if @guess <= @low
      call_out_lie
    else
      @high = @guess - 1
      detect_lies
    end
  end

  def detect_lies
    if @low > @high
      call_out_lie
    end
  end

  def call_out_lie
    puts "You're lying! Do you want to play again? Enter yes or no:"
    play_again = gets.chomp.downcase
    reset_game if play_again == "yes"
    exit if play_again != "yes"
  end

  def reset_game
    @low = 1
    @high = 100
    @guess = nil
    @previous_guesses.clear
    puts "Think of a number between 1 and 100."
  end
end

guesser = NumberGuesser.new
guesser.think


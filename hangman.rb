def hangman(word, guessed_letters)
  word.chars.map { |char| guessed_letters.include?(char) ? char : '_' }.join
end

puts hangman("bob", ["b"])
puts hangman("alphabet", ["a", "h"])
puts hangman("hangman", ["a", "n", "g"])
puts hangman("yeehaw", ["h", "a", "w"])
puts hangman("melisse", ["s", "s", "e"])

require_relative("./game")
require_relative("./hidden_word")
require_relative("./player")
require_relative("./art")

class Runner
  puts "Please enter your chosen secret word: "
  secret_word = gets.chomp
  hidden_word = HiddenWord.new(secret_word)
  system("clear")
  puts "Please enter your name: "
  name = gets.chomp
  system("clear")
  player = Player.new(name)
  game = Game.new(player, hidden_word)
  puts "Welcome to the Snowman Game #{name}!"
  winner = false
  while game.player.lives > 0 && winner == false
    puts "Guess the secret word before your #{game.player.lives.to_s} lives run out."
    p game.word.reveal(game.guessed_letters)
    puts "Your guesses so far #{game.guessed_letters}"
    puts "Please guess a letter:"
    letter = gets.chomp
    game.check_guess(letter)
    system("clear")
    puts "#{name}'s Snowman Game"
    winner = game.is_won
  end
  system("clear")
  puts "The Snowman Game"
  puts "The secret word was #{secret_word}"
  if winner == true
    puts "Well done, you won!"
  else
    puts "Better luck next time!"
  end
end

runner = Runner.new()

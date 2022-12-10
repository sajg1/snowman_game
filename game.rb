class Game
  attr_reader :player, :word, :guessed_letters
  def initialize(player, word)
    @player = player
    @word = word
    @guessed_letters = []
  end

  def check_guess(letter)
    if @guessed_letters.include? letter
      return
    end
    @guessed_letters.append(letter)
    if @word.has_letter(letter) == false
      @player.lives -= 1
    else
      @word.reveal(@guessed_letters)
    end
  end

  def is_won
    if @player.lives > 0 && (@word.reveal(@guessed_letters) == @word.word)
      return true
    else
      return false
    end
  end

end

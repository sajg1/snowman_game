require('minitest/autorun')
require('minitest/rg')
require_relative("../game")
require_relative("../hidden_word")
require_relative("../player")

class TestGame < MiniTest::Test
  def test_game_has_a_player
    player1 = Player.new("Steve")
    word = HiddenWord.new("hippo")
    game = Game.new(player1, word)
    assert_equal("Steve", game.player.name)
  end

  def test_game_can_have_a_hidden_word
    player1 = Player.new("Steve")
    word = HiddenWord.new("hippo")
    game = Game.new(player1, word)
    assert_equal("*****", game.word.reveal)
  end

  def test_game_has_an_array_of_guesses
    player1 = Player.new("Steve")
    word = HiddenWord.new("hippo")
    game = Game.new(player1, word)
    game.add_guess("h")
    assert_equal(["h"], game.guessed_letters)
  end
end

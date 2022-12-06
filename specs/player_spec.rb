require('minitest/autorun')
require('minitest/rg')
require_relative('../player')

class TestPlayer < MiniTest::Test
  def test_player_has_name
    player1 = Player.new("Stephen")
    assert_equal("Stephen", player1.name)
  end

  def test_a_player_has_6_lives
    player1 = Player.new("Stephen")
    assert_equal(6, player1.lives)
  end
end

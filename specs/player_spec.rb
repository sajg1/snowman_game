require('minitest/autorun')
require('minitest/rg')
require_relative('../Player')

class TestPlayer < MiniTest::Test
  def test_player_has_name
    player1 = Player.new("Stephen")
    assert_equal("Stephen", player1.name)
  end
end

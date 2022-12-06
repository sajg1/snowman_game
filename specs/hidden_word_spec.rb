require('minitest/autorun')
require('minitest/rg')
require_relative('../hidden_word')

class TestHiddenWord < MiniTest::Test
  def test_word_can_be_hidden
    word = HiddenWord.new("hello")
    assert_equal("*****", word.reveal())
  end
end

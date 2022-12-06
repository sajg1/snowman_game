require('minitest/autorun')
require('minitest/rg')
require_relative('../hidden_word')

class TestHiddenWord < MiniTest::Test
  def test_word_can_be_hidden
    word = HiddenWord.new("hello")
    assert_equal("*****", word.reveal())
  end

  def test_letter_can_be_revealed
    word = HiddenWord.new("hello")
    assert_equal("h****", word.reveal(["h"]))
    assert_equal("*e***", word.reveal(["e"]))
    assert_equal("**ll*", word.reveal(["l"]))
    assert_equal("****o", word.reveal(["o"]))
    assert_equal("h*ll*", word.reveal(["h","l"]))
    assert_equal("*e**o", word.reveal(["o","e", "p", "s", "i"]))
  end
end

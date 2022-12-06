class HiddenWord
  def initialize(word)
    @word = word
    @hidden = ""
  end

  def reveal(guessed_letters=[])
    if guessed_letters.length > 0
      pass
    else
      i=0
      while i < @word.length
        @hidden += "*"
        i += 1
      end
    return @hidden
    end
  end
end

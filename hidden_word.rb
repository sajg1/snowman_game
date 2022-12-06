class HiddenWord
  def initialize(word)
    @word = word
    @hidden = ""
  end

  def reveal(guessed_letters=[])
    @hidden = ""
    count = 0
    if guessed_letters.length > 0
      for letter in @word.split("") do
        for guess in guessed_letters do
          if letter == guess
            @hidden += letter
          end
        end
        if count == @hidden.length
          @hidden += "*"
        end
        count += 1
      end
    else
      i=0
      while i < @word.length
        @hidden += "*"
        i += 1
      end
    end
    return @hidden
  end

end

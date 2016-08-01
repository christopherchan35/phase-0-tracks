class Game
  attr_accessor :word, :guess_letter,
    :guess_count

  def initialize
    @word = word
    @guess_count = 0
    @guess_letter = guess_letter
    @guesses = []
    @game_won = false
    @answer = []
  end

  def generate_answer(answer)
    answer.length.times { @answer << '-'}
  end

  def guess()
    if !@game_won
      i = 0
      @word.each_char do |letter|
        if @guess_letter == letter
          @answer[i] = letter
        else
        end
        i += 1
      end

      if @guesses.include?(@guess_letter)
        p 'You tried that already...'
      else
        @guess_count += 1
      end
    else
      @game_won = true
    end

    print @answer.join('')
    puts ' '
  end

  def add_to_guesses
    @guesses << @guess_letter
  end

end
class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over == true
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    if @game_over == false
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    p "repeat new sequence with space like: 'red green blue'"
    str = gets.chomp
    arr = str.split(' ')
    arr.each_with_index do |color, i|
     @game_over = false if COLORS[i] != color.downcase
    end
  end

  #prompt the user to repeat back the new sequence 
  #that was just shown to them, one color at a time.
  #If they give an incorrect color, it should immediately set @game_over to be true.

  def add_random_color
    idx = rand(0...COLORS.length)
    @seq << COLORS[idx]
  end

  def round_success_message
    p "round complete!"
  end

  def game_over_message
    p "game over"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

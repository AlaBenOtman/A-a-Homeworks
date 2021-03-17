class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    
    while self.game_over == false 
      self.take_turn
    end
    self.game_over_message
    self.reset_game

  end

  def take_turn
    self.show_sequence
    self.require_sequence
    if self.game_over == false
      self.round_success_message
      self.sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
       sleep 1
      system("clear")
    end

  end

  def require_sequence
    puts "enter the the first letter of each color"
    @seq.each do |color|
      input = gets.chomp
      if color != input 
       return @game_over = true 
      end
    end
  end

  def add_random_color
    seq << COLORS.sample

  end

  def round_success_message
    puts " succseed "

  end

  def game_over_message
    puts "GAME OVER ! You made it #{@sequence_length - 1} rounds."
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false 
    self.seq = []

  end
end

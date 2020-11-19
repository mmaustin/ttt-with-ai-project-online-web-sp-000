class Game
  require "pry"
  WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
  attr_accessor :board, :player_1, :player_2

  def initialize(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = Board.new)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
  end

  def current_player
    if @board.turn_count % 2 == 0 #? player_1 : player_2
      player_1
    else
      player_2
    end
  end

  def won?
    outcome = nil
    WIN_COMBINATIONS.each do |combo|
      position_1 = combo[0]
      position_2 = combo[1]
      position_3 = combo[2]

    if board.cells[position_1] == "X" && board.cells[position_2] == "X" && board.cells[position_3] == "X"
      outcome = combo
    elsif board.cells[position_1] == "O" && board.cells[position_2] == "O" && board.cells[position_3] == "O"
      outcome = combo
    else
      false
      end
    end
   outcome
  end

  def draw?
    board.full? && !won?
  end

  def over?
    board.full? || won? || draw?
  end

  def winner
    if outcome = won?
    board.cells[outcome.first]
    end
  end

  def turn
    puts "Please enter 1-9:"
    input = gets.strip
    index = input.to_i
    if board.valid_move?(index)
      player = current_player
      board.update(input, player)
      board.display
    else
    turn
    end
  end

  def play
    until over?
      turn
  #binding.pry
    end

    if won?
      victor = winner
      puts "Congratulations #{victor}!"
    elsif draw?
      puts "Cat's Game!"
    end
  end

end


=begin
def turn
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(index)
    player = current_player
    move(index, player)
    display_board
  else
    turn
  end
end
=end

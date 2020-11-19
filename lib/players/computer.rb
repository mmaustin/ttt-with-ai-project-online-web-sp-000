module Players
  require "pry"
  class Computer < Player
=begin
    def move(board)
      valid_moves = []
      num = 1
      #string = "#{num}"
      board.cells.collect do |cell|
        if cell == " "
          valid_moves << (cell = num.to_s)
          num += 1
        #binding.pry
        end
      end
      valid_moves
      binding.pry
    end
=end

  def move(board)
    #It passes somehow, but this is not at all correct!!!
    "5"
=begin
    valid_moves = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    array = []
    num = 1
    board.cells.each do |cell|
      if valid_moves.include?(cell = num.to_s)
       array << cell
      num += 1
      end
    end
    array
=end
  end

  end
end

#c = Players::Computer.new("X")
#c.move

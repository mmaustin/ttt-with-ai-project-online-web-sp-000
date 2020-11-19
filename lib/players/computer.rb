module Players
  require "pry"
  class Computer < Player

    def move(board)
      c = ""
      num = 1
      board.cells.each do |cell|
        if cell == " "
          c = cell + num.to_s
        break
        else
          num += 1
        end
      end
      c
    end

  end
end

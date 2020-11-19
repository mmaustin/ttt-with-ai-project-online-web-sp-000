module Players
  require "pry"
  class Computer < Player

    def move(board)
      c = ""
      num = 1
      board.cells.each do |cell|
        if cell == " "
          c = cell + num.to_s
          num += 1
        break
        else
          num += 1
        end
      end
      c.strip
    end

  end
end

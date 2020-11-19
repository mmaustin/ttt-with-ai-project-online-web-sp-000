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
   c = ""
   num = 1
   board.cells.each do |cell|
     if cell == " "
       #num += 1
       c = cell + num.to_s
       #print c
       num += 1
     break
     else
       num += 1
     #num += 1
     end
   end
   print c
 end

  end
end

#c = Players::Computer.new("X")
#c.move

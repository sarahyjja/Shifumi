require 'player'
 class Human < Player

   def make_move
     @input.gets.chomp
   end
 end

require 'player'
 class Computer < Player

   def make_move
     objects = ["rock", "paper", "scissors"]
     objects.sample
   end
 end

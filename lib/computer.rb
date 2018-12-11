require 'move_randomizer'

 class Computer

   def initialize(name)
     @name = "Computer"
   end

   def name
     @name
   end

   def make_move
    move_randomizer = MoveRandomizer.new
    move_randomizer.move
   end
 end

require 'move_randomizer'

 class Computer
   def initialize
     @name = ""
     @move = ""
   end

   def name
     @name
   end

   def move
     @move
   end

  def create_player_name
    @name = "Computer"
  end

   def make_move
    move_randomizer = MoveRandomizer.new
    @move = move_randomizer.move
   end
 end

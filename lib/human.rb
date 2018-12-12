 class Human
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
     puts "Please enter your name : "
     @name = gets.chomp
   end

   def make_move
     valid_input = get_player_input
     @move = convert_input_to_move(valid_input)
   end

   def convert_input_to_move(valid_input)
     forms = {
       "q" => "paper",
       "p" => "paper",
       "a" => "rock",
       "l" => "rock",
       "z" => "scissors",
       "m" => "scissors"
     }
     forms[valid_input]
   end

   def valid?(input)
     ["q", "p", "a", "l", "z", "m"].include?(input)
   end

   def get_player_input
     input = gets.chomp
     if valid?(input)
       input
     else
       get_player_input
     end
   end

 end

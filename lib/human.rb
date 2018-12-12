 class Human
   def initialize(input = $stdin, output = $stdout)
     @input = input
     @output = output
   end

   def input
     @input
   end

   def output
     @output
   end

   def make_move
     valid_input = get_player_input
     convert_input_to_move(valid_input)
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

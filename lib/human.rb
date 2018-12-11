 class Human
   def initialize(name, input = $stdin, output = $stdout)
     @name = name
     @input = input
     @output = output
   end

   def name
     @name
   end

   def input
     @input
   end

   def output
     @output
   end

   def make_move
     @input.gets.chomp
   end

 end

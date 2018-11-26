class Elements

  def initialize(paper, rock, scissors)
    @paper = paper
    @rock = rock
    @scissors = scissors
  end

  def paper
  @paper = 1
   # if @paper == "paper"
   #    puts "you win"
   #  else
   #    puts "you loose"
   # end
  end

  def rock
    @rock
    # if @rock == "rock"
    #    puts "you win"
    #  else
    #    puts "you loose"
    # end
  end

  def scissors
  #  @scissors = 3
    if @scissors == "scissors"
       puts "you win"
     else
       puts "you loose"
    end
  end

end

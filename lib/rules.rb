class Rules

  def initialize(paper, rock, scissors)
    @paper = paper
    @rock = rock
    @scissors = scissors
  end

  def paper
    @paper
  end

  def paper_winner(paper)
    case paper
      when "paper"
        result = "you win"
      else
        puts "you loose"
    end
  end

  def rock
    @rock
  end

  def scissors
    @scissors
  end

end

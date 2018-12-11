class Rules
  def initialize(setup)
    @setup = setup
    @moves = []
  end

  def setup
    @setup
  end

  def ask_for_move(player)
    puts "#{player} it's your turn!"
    puts "Choose in between :"
    puts "Q or P for paper"
    puts "A or L for rock"
    puts "Z or M for scissors"
  end

  def convert_input_to_move(choice)
    case choice
    when "q", "p"
      @moves.push("paper")
    when "a", "l"
      @moves.push("rock")
    when "z", "m"
      @moves.push("scissors")
    else
      return "Not valid"
      #convert_input_to_move(choice)
    end
  end

  def winning_move(moves)
    if moves.include?("paper") && moves.include?("rock")
      puts "Paper wins\n"
      return "Paper wins\n"
    elsif moves.include?("scissors") && moves.include?("rock")
       puts "Rock wins\n"
      return "Rock wins\n"
    elsif moves.include?("scissors") && moves.include?("paper")
      puts "Scissors wins\n"
      return "Scissors wins\n"
    elsif moves.include?("paper") && moves.include?("paper")
      puts "Draw! No winner\n"
      return "Draw! No winner\n"
    elsif moves.include?("rock") && moves.include?("rock")
      puts "Draw! No winner\n"
      return "Draw! No winner\n"
    elsif moves.include?("scissors") && moves.include?("scissors")
      puts "Draw! No winner\n"
      return "Draw! No winner\n"
    end
  end
end

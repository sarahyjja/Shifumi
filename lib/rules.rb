class Rules
  def initialize
     @moves = []
  end

  def ask_for_move(player)
    puts "#{player.name} it's your turn!"
    puts "Choose in between :"
    puts "Q or P for paper"
    puts "A or L for rock"
    puts "Z or M for scissors"
  end

  def results(player_1, player_2)
    if player_1.move == "paper" && player_2.move == "rock"
      { :winner => player_1, :loser => player_2 }
    elsif player_1.move == "rock" && player_2.move == "scissors"
      { :winner => player_1, :loser => player_2 }
    elsif player_1.move == "scissors" && player_2.move == "paper"
      { :winner => player_1, :loser => player_2 }
    elsif player_2.move == "paper" && player_1.move == "rock"
      { :winner => player_2, :loser => player_1 }
    elsif player_2.move == "rock" && player_1.move == "scissors"
      { :winner => player_2, :loser => player_1 }
    elsif player_2.move == "scissors" && player_1.move == "paper"
      { :winner => player_2, :loser => player_1 }
    else
      nil
    end

  end
end

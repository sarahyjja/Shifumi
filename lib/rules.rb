class Rules
  def initialize
    @moves = []
  end

  def ask_for_move(player)
    puts "#{player} it's your turn!"
    puts "Choose in between :"
    puts "Q or P for paper"
    puts "A or L for rock"
    puts "Z or M for scissors"
  end

  def make_move(player)
    player.make_move
  end

  def winning_move(move_player_1, move_player_2)
    if move_player_1 == "paper" && move_player_2 == "rock"
      "paper"
    elsif move_player_1 == "scissors" && move_player_2 == "rock"
      "rock"
    elsif move_player_1 == "scissors" && move_player_2 == "paper"
      "scissors"
    else
      nil
    end
  end
end

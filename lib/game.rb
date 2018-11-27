class Game
attr_reader :players

  def initialize(players)
#  @players = [player1, player2]
  @players = players
  end

  def winner
    @players[0 || 1]
    # i want to call @players and the position in the array
  end
end


class Player
  def do_move(paper, rock, scissors)
    #move = "paper", "rock", "scissors"
  end
end


class Rules

  def initialize(playerred, playerblue)
    @playerred = playerred
    @playerblue = playerblue
  end

  # def winner_move(move)
  #   if playerred.move = "paper" && playerblue.move = "rock"
  #     return "player red : winner!"
  #   end
  #   if playerred.move = "rock" && playerblue.move = "scissors"
  #     return "player red : winner!"
  #   end
  #   if playerred.move = "scissors" && playerblue.move = "paper"
  #     return "player red : winner!"
  #   end
  #   else
  #     "player blue : winner!"
  #   end

  def find_winner(moves)
    if playerred.do_move == "paper" && playerblue.do_move == "rock"
      return "player red : winner!"
    end

    if playerred.do_move == "rock" && playerblue.do_move == "scissors"
      return "player red : winner!"
    end

    if playerred.do_move == "scissors" && playerblue.do_move == "paper"
      return "player red : winner!"
    end

    if playerred.do_move == "paper" && playerblue.do_move == "paper"
      return "equal"
    end

    if playerred.do_move == "rock" && playerblue.do_move == "rock"
      return "equal"
    end

    if playerred.do_move == "scissors" && playerblue.do_move == "scissors"
      return "equal"
    end


      "player blue : winner!"

  end
end
end

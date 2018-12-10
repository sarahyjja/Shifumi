class SetUp
  # this prompts for the SetUp
  def ask_for_game_mode
    puts "Welcome to Shifumi"
    puts "Please, choose a game mode :"
    puts "1 : Human player vs human player"
    puts "2 : Human player vs computer player"
    puts "3 : Computer player vs computer player"
    gets.chomp
  end

  def game_mode_choice(mode_choice, player1, player2)
    case mode_choice
      when "1"
        human_vs_human(player1, player2)
      when "2"
        human_vs_computer(player1, player2)
      when "3"
        computer_vs_computer(player1, player2)
      else
        "Invalid mode"
    end
  end

  def human_vs_human(player1, player2)
    [Human.new(player1), Human.new(player2)]
  end

  def human_vs_computer(player1, player2)
    [Human.new(player1), Computer.new(player2)]
  end

  def computer_vs_computer(player1, player2)
    [Computer.new(player1), Computer.new(player2)]
  end

  def setup_players
    puts "Set up 2 players"
    puts "Player 1 is #{name}"
    @player1 = name
    puts "Player 2 is #{name}"
    @player2 = name
    puts "Lets start the game!"
  end

 end

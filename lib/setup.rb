class SetUp

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
  
  def ask_for_game_mode
    puts "Welcome to Shifumi"
    puts "Please, choose a game mode :"
    puts "1 : Human player vs human player"
    puts "2 : Human player vs computer player"
    puts "3 : Computer player vs computer player"
    choice = gets.chomp
    if choice == "1" || choice == "2" || choice == "3"
      setup_players(choice)
    else
      puts "Wrong mode"
      ask_for_game_mode
    end
  end

  def setup_players(choice)
    puts "Player 1 give me your name :"
    player1_name = gets.chomp
    puts "Player 2 give me your name :"
    player2_name = gets.chomp
    game_mode_choice(choice, player1_name, player2_name)
  end

  def display_player_name(player1_name, player2_name)
    puts "Set up 2 players"
    puts "Player 1 is #{player1_name}"
    puts "Player 2 is #{player2_name}"
    puts "Lets start the game!"
   end
end

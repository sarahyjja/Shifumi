class SetUp

  def welcome_message
    puts "Welcome to Shifumi"
    puts "Please, choose a game mode :"
    puts "1 : Human player vs human player"
    puts "2 : Human player vs computer player"
    puts "3 : Computer player vs computer player"
  end

  def get_mode_choice
    game_mode_choice = gets.chomp
    if valid_choice?(game_mode_choice)
      game_mode_choice
    else
      puts "Wrong mode"
      get_mode_choice
    end
  end

  def valid_choice?(mode_choice)
    mode_choice == "1" || mode_choice == "2" || mode_choice == "3"
  end

  def create_players(mode_choice)
    modes = {
      "1" => [Human.new, Human.new],
      "2" => [Human.new, Computer.new],
      "3" => [Computer.new, Computer.new]
    }
    modes[mode_choice]
  end

  def setup_players(mode_choice)
    puts "Player 1 give me your name :"
    player1_name = gets.chomp
    puts "Player 2 give me your name :"
    player2_name = gets.chomp
  end

  def display_player_name(player1_name, player2_name)
    puts "Set up 2 players"
    puts "Player 1 is #{player1_name}"
    puts "Player 2 is #{player2_name}"
    puts "Lets start the game!"
   end
end

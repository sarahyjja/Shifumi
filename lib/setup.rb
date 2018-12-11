class SetUp
  def start
    welcome_message
    ask_for_game_mode
  end

  def create_players
    game_mode_choice(mode_choice, player1_name, player2_name)
    setup_players(mode_choice)
    display_player_name(player1_name, player2_name)
  end

  def welcome_message
    puts "Welcome to Shifumi"
    puts "Please, choose a game mode :"
    puts "1 : Human player vs human player"
    puts "2 : Human player vs computer player"
    puts "3 : Computer player vs computer player"
  end

  def ask_for_game_mode
    game_mode_choice = gets.chomp
    if valid_choice?(game_mode_choice)
      game_mode_choice
    else
      puts "Wrong mode"
      ask_for_game_mode
    end
  end

  def valid_choice?(choice)
    choice == "1" || choice == "2" || choice == "3"
  end

  def game_mode_choice(mode_choice, player1_name, player2_name)
    case mode_choice
    when "1"
      human_vs_human(player1_name, player2_name)
    when "2"
      human_vs_computer(player1_name, player2_name)
    when "3"
      computer_vs_computer(player1_name, player2_name)
    else
      "Invalid mode"
    end
  end

  def human_vs_human(player1_name, player2_name)
    [Human.new(player1_name), Human.new(player2_name)]
  end

  def human_vs_computer(player1_name, player2_name)
    [Human.new(player1_name), Computer.new(player2_name)]
  end

  def computer_vs_computer(player1_name, player2_name)
    [Computer.new(player1_name), Computer.new(player2_name)]
  end

  def setup_players(mode_choice)
    puts "Player 1 give me your name :"
    player1_name = gets.chomp
    puts "Player 2 give me your name :"
    player2_name = gets.chomp
    # game_mode_choice(choice, player1_name, player2_name)
  end

  def display_player_name(player1_name, player2_name)
    puts "Set up 2 players"
    puts "Player 1 is #{player1_name}"
    puts "Player 2 is #{player2_name}"
    puts "Lets start the game!"
   end
end

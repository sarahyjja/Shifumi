class Shifumi

  include Form
  #attr_accessor :form

  def initialize
    @player1 = player1
    @player2 = player2
    @game = game
    @form = [""]
    @result
    #@amount_of_point = 0

  end
  def player1
    @player1
  end
  def player2
    @player2
  end
  def game
    @game
  end

  module Form
    def form(rock, paper, scissors)
      form = ["rock", "paper", "scissors"]
      @form.index(form)
      @form.each do |form|
        if form == winner_move
        elsif form == equal_move
        elsif form == looser_move
        end
        return @result.display_result
      end
    end
        # def compairing(form.player1 && form.player2)
        def winner_move
          @player1 == "paper" && @player2 == "rock"
          @player1 == "rock" && @player2 == "scissors"
          @player1 == "scissors" && @player2 == "paper"
        end
        def equal_move
          @player1.do_move == "paper" && @player2.do_move == "paper"
          @player1.do_move == "rock" && @player2.do_move == "rock"
          @player1.do_move == "scissors" && @player2.do_move == "scissors"
        end
        def looser_move
          @player1.do_move == "paper" && @player2.do_move == "scissors"
          @player1.do_move == "rock" && @player2.do_move == "paper"
          @player1.do_move == "scissors" && @player2.do_move == "rock"
        end

        def display_result(winner, looser, equal)
          @result = [player1, player2]
          if @player1.winner_move
            puts "player 1 : you won | player 2 : you loose"
            return @player1.(amount_of_point =+ 1)
          end
          if @player1.equal_move
            puts " you are equal"
            return amount_of_point
          end
          if @player1.looser.move
            puts "player 1 : you loose | player 2 : you won"
            return @player2.(amount_of_point =+ 1)
          end
        end
      end
    end

# class Game
#   def initialize
#     @player1 = player1
#     @player2 = player2
#     @game = game
#   end
#   # def game
#   #   @game
#   # end
#   # def player
#   #   @player1
#   #   @player2
#   # end
# end

# class Player
#   def initialize
#     @player1
#     @player2
#   end
#   # def player(player1, player2)
#   #   @player
#   # end
#
#   # def form(rock, paper, scissors)
#   #   @form = ["rock", "paper", "scissors"]
#   #   # @rock = "rock"
#   #   # @paper = "paper"
#   #   # @scissors = "scissors"
#   #   # form.player1 = get.chomp
#   #   # form.player2 = get.chomp
#   # end
# end
# end

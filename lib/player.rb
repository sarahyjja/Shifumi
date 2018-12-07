class Player
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def make_move
    @input.gets.chomp
  end
end

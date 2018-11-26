# This is my elements spec file.
# I will test here :
#     - the behaviour of the paper
#     - the behaviour of the rock
#     - the behaviour of the scissors

require 'elements'

RSpec.describe Elements do

  it 'ask if paper/rock/scissors are an object' do
    elements = Elements.new("paper", "rock", "scissors")

    expect(elements.is_a?Object).to eq(true)
  end

  it 'define what are the elements' do
    element = Elements.new("paper", "rock", "scissors")
    #element = Elements.new("rock")
    #element = Elements.new("scissors")

    expect(element.paper).to eq("paper")
    expect(element.rock).to eq("rock")
    expect(element.scissors).to eq("scissors")
  end

  xit 'explain the behaviour of the paper' do
    element = Elements.new("paper", "rock", "scissors")

    expect(element.paper).to eq("you win")
  end

  # it 'explain the behaviour of the paper' do
  #   element = Elements.new("rock")
  #
  #   expect(element.paper).to eq("you loose")
  # end
end

# This is my elements spec file.
# I will test here :
#     - the behaviour of the rock
#     - the behaviour of the paper
#     - the behaviour of the scissors

require 'paper'
require 'rock'
require 'scissors'

RSpec.describe Paper do
  it 'ask if paper is an object' do
    user = Person.new("Sarah", "Kharraz", "s@k.com", 123456789)

    expect(user.first_name).to eq("Sarah")
  end

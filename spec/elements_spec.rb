# This is my elements spec file.
# I will test here :
#     - the behaviour of the paper
#     - the behaviour of the rock
#     - the behaviour of the scissors

require 'elements'

RSpec.describe Elements do

  it 'ask if paper/rock/scissors are an object' do
    elements = Elements.new

    expect(elements.is_a?Object).to eq(true)
  end

  xit ''

end

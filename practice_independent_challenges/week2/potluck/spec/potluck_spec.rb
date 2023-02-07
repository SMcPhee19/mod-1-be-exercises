require 'rspec'
require './lib/dish'
require './lib/potluck'

RSpec.describe 'potluck' do
  let(:potluck) {Potluck.new("7-13-18")}

  it 'had date' do
    potluck.date
    
    expect(potluck.date).to eq("7-13-18")
  end

  is 'has dishes' do
    potluck.dishes

    expect(potluck.dishes).to eq([])
  end

end
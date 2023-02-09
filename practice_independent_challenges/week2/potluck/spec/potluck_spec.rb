require 'rspec'
require './lib/dish'
require './lib/potluck'

RSpec.describe 'potluck' do
  let(:potluck) {Potluck.new("7-13-18")}
  # let(:dish_name) {Dish.new}

  it 'had date' do
    potluck.date
    
    expect(potluck.date).to eq("7-13-18")
  end

  it 'has dishes' do
    potluck.dishes
    
    expect(potluck.dishes).to eq([])
  end

  it 'can add dishes' do
    potluck.add_dish(dish_name)
    require 'pry'; binding.pry
    expect(potluck.add_dish).to eq(couscous_salad)
  end

end
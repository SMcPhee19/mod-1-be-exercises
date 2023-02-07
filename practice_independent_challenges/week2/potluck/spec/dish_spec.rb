require 'rspec'
require './lib/dish'

RSpec.describe 'dish' do
  let(:dish) {Dish.new("Couscous Salad", :appetizer)}
  
  it 'has name' do
    dish.name
    
    expect(dish.name).to eq("Couscous Salad")
  end
  
  it 'has category' do
    dish.category
    
    require 'pry'; binding.pry
    expect(dish.category).to eq(:appetizer)
  end








end
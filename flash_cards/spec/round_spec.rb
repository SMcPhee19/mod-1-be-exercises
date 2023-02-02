require 'rspec'
require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

RSpec.describe Round do
  it 'has cards' do
    card_1 = Card.new("What is the capital of Alaska", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth Photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
   
    expect(deck.cards).to eq([card_1, card_2, card_3])
  end

  it 'has round' do
    card_1 = Card.new("What is the capital of Alaska", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth Photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new( [card_1, card_2, card_3] )
    round = Round.new(deck)
    expect(round.deck).to eq(deck)
  end

  it 'has turns' do
    card_1 = Card.new("What is the capital of Alaska", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth Photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new( [card_1, card_2, card_3] )
    round = Round.new(deck)


    expect(round.turns).to eq([])
  end

  it 'has current card' do
    card_1 = Card.new("What is the capital of Alaska", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth Photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new( [card_1, card_2, card_3] )
    round = Round.new(deck)

  
    expect(round.current_card).to eq(card_1) 
  end

  it 'has new turns' do
    card_1 = Card.new("What is the capital of Alaska", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth Photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new( [card_1, card_2, card_3] )
    round = Round.new(deck)
    new_turn = round.take_turn("Juneau")

    expect(new_turn.class).to eq(Turn)
    expect(new_turn.correct?).to be true
  end

  it 'stores number correct' do
    card_1 = Card.new("What is the capital of Alaska", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth Photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new( [card_1, card_2, card_3] )
    round = Round.new(deck)
    new_turn = round.take_turn("Juneau")

    expect(round.number_correct).to eq(1)
  end


end
class Round
  attr_reader :deck, :turns
  def initialize(deck)
    @deck = deck
    @turns = []
    @current_card = current_card

  end

  def current_card 
    @current_card = deck.cards[turns.length]
  end

  def take_turn(guess)
    next_turn = Turn.new(guess, @current_card)
    @turns << next_turn
    return next_turn
  end

  def number_correct
    number = 0
    @turns.each do |turn|
      if turn.correct?
        number += 1
        return number
      end
    end
  end

end
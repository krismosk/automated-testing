require_relative 'card'

class Deck
  attr_reader :cards
  
  def initialize
    @cards = []
    
    # create cards array
    VALUES.each do |value|
      SUITS.each do |suit|
        @cards.push(Card.new(value, suit)) 
      end
    end
    
  end
  
  def count_cards
    return cards.length 
  end 
  
  def draw_card
    # removes a Card from the Deck and
    # returns the removed Card 
  end
  
  def shuffle_cards
    return cards.shuffle!
  end
  
  
end

my_deck = Deck.new
p my_deck.cards
p my_deck.shuffle_cards
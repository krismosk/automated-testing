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
  
  def count
    return cards.length 
  end 
  
  
  
  
  
  
  # def draw
  #   # removes a Card from the Deck and
  #   # returns the removed Card 
  # end
  
  # def shuffle
  #   # shuffles the deck
  #   # don't test for randomness, just make sure method can be called
  # end
  
  
end

my_deck = Deck.new
p my_deck.count
require_relative 'card'

class Deck
  attr_reader :values, :suits, :cards
  def initialize
    @values = [*(2..10), "Ace", "Jack", "King", "Queen"]
    @suits = [:hearts, :spades, :clubs, :diamonds]
    @cards = []
    
    
  end
  
  def draw
    # removes a Card from the Deck and
    # returns the removed Card 
  end
  
  def shuffle
    # shuffles the deck
    # don't test for randomness, just make sure method can be called
  end
  
  def count
    # returns the number of cards in the Deck
    
  end 
end

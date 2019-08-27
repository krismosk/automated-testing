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
  
  def shuffle_cards
    return cards.shuffle!
  end
  
  def draw_card
    
    removed_card = cards.shift #removes the first Card from the Deck
    # return "The #{removed_card.to_s} card was removed from the deck."
    return removed_card
  end
  
end

my_deck = Deck.new

p my_deck.cards.first #unshuffled first card

drawn_card = my_deck.cards.shift
p drawn_card
p my_deck.cards.include?(drawn_card)



# drawn_card = my_deck.draw_card 
# p drawn_card

# card.rb

class Card
  attr_reader :value, :suit
  
  def initialize(value, suit)
    @value = value
    @suits = [:hearts, :spades, :clubs, :diamonds]
    @values = (1..13).to_a
    
    if @suits.include?(suit) == false || value < 1 || value > 13
      raise ArgumentError.new("Not a valid suit.")
    end
    
    @suit = suit
    
    
  end
  
  
  def to_s
    return "#{value} of #{suit.to_s}"
  end
end

# result = Card.new(12, :clubs)
# p result



# suits = [:hearts, :spades, :clubs, :diamonds]
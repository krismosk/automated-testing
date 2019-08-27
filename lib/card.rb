
VALUES = [*(2..10), "Ace", "Jack", "King", "Queen"]
SUITS = [:hearts, :spades, :clubs, :diamonds]

class Card
  attr_reader :value, :suit
  
  def initialize(value, suit)
    unless VALUES.include?(value) && SUITS.include?(suit)
      raise ArgumentError.new("Not a valid card.")
    end
    @value = value
    @suit = suit  
  end
  
  def to_s
    return "#{value} of #{suit.to_s}"
  end  
end
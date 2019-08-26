class Card
  attr_reader :value, :suit
  
  def initialize(value, suit)
    @value = value
    @values = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Ace", "Jack", "King", "Queen"]
    @suits = [:hearts, :spades, :clubs, :diamonds]
    
    unless @suits.include?(suit) && @values.include?(value)
      raise ArgumentError.new("Not a valid card.")
    end
    @suit = suit
    
    
  end
  
  
  def to_s
    return "#{value} of #{suit.to_s}"
  end
  
  
  
  
end
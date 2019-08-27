require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
  # 1.  Expected Behavior
  # 2.  Edge cases
  
  describe "You can create a Deck instance" do
    # Expect that Deck class can be instantiated with 52 cards 
    it "Can be created with 52 cards in deck" do 
      # Arrange
      test_deck = Deck.new
      
      # Act / Assert
      expect(test_deck.cards.length).must_equal 52
    end
    
    
  end
  
  describe "You can count the number of card in a Deck" do
    it ".count returns a count of cards" do
      # Expect that .count can be used on Deck
      # Arrange 
      test_deck_size = Deck.new
      
      # Act / Assert
      expect(test_deck_size.cards.length).must_equal 52
    end
  end 
  
  
  
  
  # Expect that .draw can be used on Deck
  # Expect that .shuffle can be used on Deck
  
  # Expect that reader methods works for Deck instance variables
  
  # Edge: Total cards in a deck can't exceed 52
  # Edge: Each suit has one of each corresponding value and won't exceed allotted quantities
  # # i.e. only one instance - 2 of hearts; only one instance of Queen of hearts
end

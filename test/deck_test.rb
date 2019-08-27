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
    # Expect that .count can be used on Deck
    it ".count_cards returns a count of cards" do
      # Arrange 
      test_deck_size = Deck.new
      # Act / Assert
      expect(test_deck_size.cards.length).must_equal 52
    end
  end 
  
  describe "You can shuffle the Deck of cards" do 
    # Expect that .shuffle can be used on Deck
    it ".shuffle_cards returns a shuffled array of cards" do 
      # Arrange
      unshuffled_deck = Deck.new
      # Act 
      shuffled_deck = unshuffled_deck.shuffle_cards
      # Assert
      expect(shuffled_deck).wont_be_same_as unshuffled_deck
    end
  end 
  
  describe "You can draw a Card from the Deck" do
    # Expect that .draw can be used on Deck
    it ".draw_card returns one instance of Card from Deck" do
      # Arrange
      my_deck = Deck.new
      # Act
      drawn_card = my_deck.cards.shift
      # Assert
      expect(my_deck.cards).wont_include drawn_card
    end 
  end 
  
  
  
  
  
  # Expect that reader methods works for Deck instance variables
  
  # Edge: Total cards in a deck can't exceed 52
  # Edge: Each suit has one of each corresponding value and won't exceed allotted quantities
  # # i.e. only one instance - 2 of hearts; only one instance of Queen of hearts
end

require_relative 'test_helper'

describe Deck do
  describe "You can create a Deck instance" do
    it "Deck can't contain more than 52 cards" do 
      # Arrange
      test_deck = Deck.new
      # Act / Assert
      expect(test_deck.cards.length).must_equal 52
    end
  end
  
  describe "You can count the number of card in a Deck" do
    it ".count_cards returns a count of cards" do
      # Arrange 
      test_deck_size = Deck.new
      # Act / Assert
      expect(test_deck_size.cards.length).must_equal 52
    end
  end 
  
  describe "You can shuffle the Deck of cards" do 
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
    it ".draw_card returns one instance of Card from Deck" do
      # Arrange
      my_deck = Deck.new
      # Act
      drawn_card = my_deck.cards.shift
      # Assert
      expect(my_deck.cards).wont_include drawn_card
    end 
  end 
  
  describe "Reader Method" do
    it "Can retrieve the list of Cards using .cards" do
      our_deck = Deck.new
      expect(our_deck.cards).must_be_kind_of Array
    end 
    
    it "List of Cards contains Card objects" do 
      our_deck = Deck.new
      our_cards = our_deck.cards 
      our_cards.each do |card|
        expect(card).must_be_kind_of Card
      end 
    end
  end
  
  # Edge: Each suit has one of each corresponding value and won't exceed allotted quantities
  # # i.e. only one instance - 2 of hearts; only one instance of Queen of hearts
  
  
end

# require_relative 'test_helper'
# require_relative '../lib/card'


# describe Card do
#   describe "You can create a Card instance" do

#     it "Can be created" do
#       [:hearts, :spades, :clubs, :diamonds].each do |suit|
#         [2, 3, 4, 5, 6, 7, 8, 9, 10, "Queen", "King", "Ace", "Jack"].each do |value|
#           card = Card.new(value, suit)
#           expect(card).must_be_instance_of Card
#         end
#       end
#     end

#     it "Raises an ArgumentError for invalid parameters" do
#       # To raise an ArgumentError in card.rb
#       # raise ArgumentError.new
#       expect {Card.new(0, :diamonds)}.must_raise ArgumentError
#       expect {Card.new(14, :diamonds)}.must_raise ArgumentError
#       expect {Card.new(10, :clovers)}.must_raise ArgumentError
#       expect {Card.new(14, :clovers)}.must_raise ArgumentError
#       # add check for a valid value and an invalid suit 
#     end
#   end

#   describe "Testing to_s" do

#     it "to_s returns a readable String value logically for values 2-10" do
#       # Test to ensure that to_s works for cards values 2-10
#       # for example:  "2 of diamonds"

#       (2..10).each do |value|
#         [:hearts, :spades, :clubs, :diamonds].each do |suit|
#           # arrange
#           card = Card.new(value, suit)
#           # act
#           string_version = card.to_s
#           # assert
#           expect(string_version).must_equal "#{value} of #{suit}"
#         end
#       end 


#     end

#     it "to_s returns a readable String value for Ace, Jack, Queen, King" do
#       # Test to ensure that to_s works for cards values 1, and 11-13
#       # For example: "Queen of hearts"
#       # The current implementation of to_s does not address this feature
#       # Write the test, see it fail, then modify to_s to make it pass!
#       # (Consider writing a helper method!)

#       ["Ace", "Jack", "King", "Queen"].each do |value|
#         [:hearts, :spades, :clubs, :diamonds].each do |suit|
#           # arrange
#           card = Card.new(value, suit)
#           # act
#           string_version = card.to_s
#           # assert
#           expect(string_version).must_equal "#{value} of #{suit}"
#         end
#       end
#     end

#     describe "Reader methods" do

#       it "Can retrieve the value of the card using a `.value`." do
#         test_card = Card.new(2, :diamonds)
#         expect(test_card.value).must_equal 2
#       end

#       it "Can retrieve the value of the card using a `.suit`." do
#         test_card = Card.new(2, :diamonds)
#         expect(test_card.suit).must_equal :diamonds
#       end
#     end

#   end
# end

require 'minitest/autorun'
require 'DeckOfCards'

describe "FullDeckOfCards" do
  it 'will have 52 cards' do
      d = DeckOfCards.new

      assert d.cards.length == 52
  end
end

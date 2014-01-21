class Card
  attr_reader :suit, :rank

  @@ranks = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
  @@suits = ['C', 'H', 'S', 'D']

  def initialize(r, s)

    if @@ranks.include?(r) and @@suits.include?(s)
      @rank = r
      @suit = s
    else
      puts 'Invalid card type'
    end
  end

end

class DeckOfCards
  attr_reader :cards

  @@ranks = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
  @@suits = ['C', 'H', 'S', 'D']

  def initialize
    @cards = []
    @@suits.each do |s|
      @@ranks.each do |r|
        @cards << Card.new(r,s)
      end
    end
  end

end

#d = DeckOfCards.new

#d.cards.each { |x| puts x.rank + ', ' + x.suit}

class Round < ActiveRecord::Base
  belongs_to :deck
  belongs_to :user
  has_many :guesses

  def next_card
    all_cards = Card.all.where(deck_id: self.deck_id)
    correct_guesses = Guess.all.where(is_correct?: true, round_id: self.id ).collect{ |guess| guess.card}
    cards_left = all_cards - correct_guesses
    cards_left.sample
  end

  def all_guesses
    Guess.all.where(round_id: self.id).collect{ |guess| guess.card}
  end

  def wrong_guesses
    all_guesses.size - all_guesses.uniq.size
  end

  def total_cards
    self.deck.cards.size
  end

  def correct_guesses
    total_cards - wrong_guesses
  end


end

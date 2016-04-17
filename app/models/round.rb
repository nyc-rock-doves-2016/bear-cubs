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

  def first_guesses
    wrong_guesses = self.guesses - self.correct_guesses
    self.correct_guesses.select {|correct| !incorrect_guesses.find {|incorrect| correct.card == incorrect.card}}
  end
  
  def total_cards
    self.deck.cards.size
  end

  def correct_guesses
    self.guesses.select {|guess| guess.is_correct?}
  end


end

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

  # def empty?
  #   next_card.empty?
  # end

end

class Guess < ActiveRecord::Base
  belongs_to :round
  belongs_to :card
  # belongs_to :user, through: :round
end

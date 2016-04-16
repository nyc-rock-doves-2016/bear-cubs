class User < ActiveRecord::Base
  has_secure_password
  has_many :rounds
  has_many :guesses, through: :rounds
  validates :username, :email, presence: true, uniqueness: true
  validates :password, length: {in: 5..20 }
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
end

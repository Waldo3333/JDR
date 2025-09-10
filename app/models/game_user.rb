class GameUser < ApplicationRecord
  belongs_to :game
  belongs_to :user
  has_many :personnages

  enum status: { invited: 0, accepted: 1, declined: 2 }
  enum role: { admin: 1, player: 2 }

  scope :pending, -> { where(status: 1) }
  scope :accepted, -> { where(status: 2) }
  scope :declined, -> { where(status: 3) }
end

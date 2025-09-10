class Game < ApplicationRecord
  belongs_to :user  # le MJ
  has_many :game_users, dependent: :destroy
  has_many :users, through: :game_users  # tous les joueurs invités/participants
  has_many :personnages, through: :game_users
  has_many :game_items
end

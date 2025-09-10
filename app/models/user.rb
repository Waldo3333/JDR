class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true


  has_and_belongs_to_many :played_games, class_name: "Game", join_table: "games_users"
  has_many :game_users
  has_many :games, through: :game_users
  has_many :personnages, through: :game_users
end

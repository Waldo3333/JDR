class Personnage < ApplicationRecord
  belongs_to :user        # Le joueur qui possède ce personnage
  belongs_to :game        # La partie à laquelle il appartient
end

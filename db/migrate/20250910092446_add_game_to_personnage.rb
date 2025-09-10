class AddGameToPersonnage < ActiveRecord::Migration[7.1]
  def change
    add_reference :personnages, :game, null: false, foreign_key: true
  end
end

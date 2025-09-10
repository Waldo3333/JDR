class AddFieldsToPersonnages < ActiveRecord::Migration[7.1]
  def change
    add_reference :personnages, :user, null: false, foreign_key: true
    add_column :personnages, :hp, :integer
    add_column :personnages, :mana, :integer
    add_column :personnages, :character_type, :string
  end
end

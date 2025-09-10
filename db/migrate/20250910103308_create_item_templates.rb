class CreateItemTemplates < ActiveRecord::Migration[7.1]
  def change
    create_table :item_templates do |t|
      t.string :name
      t.integer :rarity
      t.string :description

      t.timestamps
    end
  end
end

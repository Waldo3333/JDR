class CreatePersonnages < ActiveRecord::Migration[7.1]
  def change
    create_table :personnages do |t|

      t.timestamps
    end
  end
end

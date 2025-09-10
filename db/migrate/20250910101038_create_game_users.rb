class CreateGameUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :game_users do |t|
      t.references :game, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :role, null: false, default: 1  # 1 = admin (MJ), 2 = player
      t.integer :status, null: false, default: 0 # 0 = invited, 1 = accepted, 2 = declined

      t.timestamps
    end

    add_index :game_users, [:game_id, :user_id], unique: true
  end
end

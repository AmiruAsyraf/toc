class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :user_id
      t.integer :user1_id, default: 0
      t.string :result, default: "unknown"

      t.timestamps null: false
    end
  end
end

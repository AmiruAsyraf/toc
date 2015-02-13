class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.string :zero default: 0
      t.string :one default: 0
      t.string :two default: 0
      t.string :three default: 0
      t.string :four default: 0
      t.string :five default: 0
      t.string :six default: 0
      t.string :seven default: 0
      t.string :eight default: 0

      t.timestamp null: false
    end
  end
end

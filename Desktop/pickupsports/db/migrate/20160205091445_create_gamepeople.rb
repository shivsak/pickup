class CreateGamepeople < ActiveRecord::Migration
  def change
    create_table :gamepeople do |t|
      t.integer :game_id
      t.integer :person_id

      t.timestamps null: false
    end
  end
end

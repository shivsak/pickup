class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.datetime :date
      t.string :venue
      t.string :type
      t.integer :max_participants

      t.timestamps null: false
    end
  end
end

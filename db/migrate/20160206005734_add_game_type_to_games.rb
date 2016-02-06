class AddGameTypeToGames < ActiveRecord::Migration
  def change
    remove_column :games, :type
    add_column :games, :game_type, :string
  end
end

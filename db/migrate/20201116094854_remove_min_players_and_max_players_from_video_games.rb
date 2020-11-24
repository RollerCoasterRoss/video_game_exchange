class RemoveMinPlayersAndMaxPlayersFromVideoGames < ActiveRecord::Migration[6.0]
  def change
    remove_column :video_games, :min_players, :integer
    remove_column :video_games, :max_players, :integer
  end
end

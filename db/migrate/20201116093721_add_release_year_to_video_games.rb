class AddReleaseYearToVideoGames < ActiveRecord::Migration[6.0]
  def change
    add_column :video_games, :release_year, :integer
  end
end

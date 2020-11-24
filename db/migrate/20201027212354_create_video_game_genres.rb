class CreateVideoGameGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :video_game_genres do |t|
      t.integer :genre_id
      t.integer :video_game_id

      t.timestamps
    end
  end
end

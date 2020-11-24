class CreateVideoGames < ActiveRecord::Migration[6.0]
  def change
    create_table :video_games do |t|
      t.string :title
      t.integer :platform
      t.integer :rating_category
      t.boolean :online
      t.integer :min_players
      t.integer :max_players

      t.timestamps
    end
  end
end

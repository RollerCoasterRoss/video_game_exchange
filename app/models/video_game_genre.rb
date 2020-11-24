class VideoGameGenre < ApplicationRecord
  belongs_to :video_game
  belongs_to :genre

  validates :genre_id, uniqueness: {scope: :video_game_id, message: "can only be connected once with this video game."}
end

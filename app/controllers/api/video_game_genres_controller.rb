class Api::VideoGameGenresController < ApplicationController
  before_action :authenticate_user

  def create
    @video_game_genre = VideoGameGenre.new(
      genre_id: params[:genre_id],
      video_game_id: params[:video_game_id]
    )

    if @video_game_genre.save
      render "show.json.jb"
    else
      render json: { errors: @video_game_genre.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    video_game_genre = VideoGameGenre.find(params[:id])
    video_game_genre.destroy

    render json: { message: "Genre deleted!" }
  end
end

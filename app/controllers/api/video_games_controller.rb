class Api::VideoGamesController < ApplicationController
  def index
    @video_games = VideoGame.all

    render "index.json.jb"
  end

  def create
    @video_game = VideoGame.new(
      title: params[:title],
      platform: params[:platform],
      rating_category: params[:rating_category],
      online: params[:online],
      release_year: params[:release_year]
    )

    if @video_game.save
      render "show.json.jb"
    else
      render json: { errors: video_game.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @video_game = VideoGame.find(params[:id])

    render "show.json.jb"
  end

  def update
    @video_game = VideoGame.find(params[:id])

    @video_game.title = params[:title] || @video_game.title
    @video_game.platform = params[:platform] || @video_game.platform
    @video_game.rating_category = params[:rating_category] || @video_game.rating_category
    @video_game.online = params[:online] || @video_game.online
    @video_game.release_year = params[:release_year] || @video_game.release_year

    if @video_game.save
      render "show.json.jb"
    else
      render json: { errors: @video_game.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    video_game = VideoGame.find(params[:id])
    video_game.destroy

    render json: { message: "Video Game deleted!" }
  end
end

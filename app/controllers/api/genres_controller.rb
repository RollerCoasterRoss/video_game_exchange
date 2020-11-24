class Api::GenresController < ApplicationController
  def index
    @genres = Genre.all

    render "index.json.jb"
  end

  def show
    @genre = Genre.find(params[:id])

    render "show.json.jb"
  end
end

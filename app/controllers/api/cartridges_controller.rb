class Api::CartridgesController < ApplicationController
  before_action :authenticate_user

  def index
    @cartridges = Cartridge.where("borrower_id IS NULL AND owner_id != ?", current_user.id)
    @cartridges = @cartridges.includes(:video_game).order("video_games.title ASC, video_games.platform ASC")
    
    render "index.json.jb"
  end

  def owner_index
    @cartridges = current_user.my_cartridges

    render "index.json.jb"
  end

  def borrower_index
    @cartridges = current_user.borrowed_cartridges

    render "index.json.jb"
  end

  def create
    @cartridge = Cartridge.new(
      video_game_id: params[:video_game_id],
      owner_id: current_user.id
    )

    if @cartridge.save
      render "show.json.jb"
    else
      render json: { errors: cartridge.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @cartridge = Cartridge.find(params[:id])

    render "show.json.jb"
  end

  def update
    @cartridge = Cartridge.find(params[:id])
    borrowing = (params[:borrow] == "true")

    @cartridge.borrower_id = borrowing ? current_user.id : nil
    @cartridge.lend_date = borrowing ? Time.now : nil

    if @cartridge.save
      render "show.json.jb"
    else
      render json: { errors: @cartridge.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    cartridge = Cartridge.find(params[:id])
    cartridge.destroy

    render json: { message: "Cartridge Destroyed!" }
  end
end

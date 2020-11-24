class Api::CartridgesController < ApplicationController
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
      owner_id: params[:owner_id],
      borrower_id: params[:borrower_id],
      lend_date: params[:lend_date]
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

    @cartridge.borrower_id = params[:borrower_id] || @cartridge.borrower_id
    @cartridge.lend_date = params[:lend_date] || @cartridge.lend_date

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

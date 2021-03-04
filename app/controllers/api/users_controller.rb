class Api::UsersController < ApplicationController
  before_action :authenticate_user, only: [:show]

  def index
    @users = User.all

    render "index.json.jb"
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      street: params[:street],
      unit: params[:unit],
      city: params[:city],
      state: params[:state],
      zip: params[:zip]
    )

    if user.save
      render json: { message: "User created successfully!" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    if params[:id] == "current"
      @user = current_user
    else
      @user = User.find(params[:id])
    end

    render "show.json.jb"
  end

  def update
    @user = User.find(params[:id])

    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.email = params[:email] || @user.email
    @user.street = params[:street] || @user.street
    @user.unit = params[:unit] || @user.unit
    @user.city = params[:city] || @user.city
    @user.state = params[:state] || @user.state
    @user.zip = params[:zip] || @user.zip

    @user.save

    if @user.save
      render "show.json.jb"
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy

    render json: { message: "User has been deleted" }
  end
end
class UsersController < ApplicationController
  # def index
  #   @users = User.all
  #   render :index
  # end

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password_digest: params[:password_digest],
      image: params[:image],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end

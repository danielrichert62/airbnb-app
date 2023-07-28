class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
    render :new
  end

  def create
    @reservation = Reservation.new(
      user_id: params[:user_id],
      room_id: params[:room_id],
      start_date: params[:start_date],
      end_date: params[:end_date],
      price: params[:price],
      total: params[:total],
    )
    if @reservation.save
      render json: { message: "Reservation saved successfully" }
    else
      render json: { errors: @reservation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def index
    @reservations = Reservation.all
    render :index
  end

  def show
    @reservation = Reservation.find_by(id: params[:id])
    render :show
  end
end

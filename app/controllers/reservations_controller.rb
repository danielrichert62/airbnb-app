class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    render :index
  end

  def show
    @reservation = Reservation.find_by(id: params[:id])
    render :show
  end
end

class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    render :index
  end
end

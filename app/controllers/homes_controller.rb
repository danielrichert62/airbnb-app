class HomesController < ApplicationController
  def landing
    render :landing

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to "/rooms"
    else
      redirect_to "/login"
    end
  end
end

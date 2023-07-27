class RoomImagesController < ApplicationController
  def index
    @room_images = RoomImage.all
    render :index
  end
end

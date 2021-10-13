class BookingsController < ApplicationController

def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

end


private

  def booking_params
    params.require(:booking).permit(:date, :outfit_id, :user_id)
  end



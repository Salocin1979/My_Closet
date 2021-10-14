class BookingsController < ApplicationController

def show
    @booking = Booking.find(params[:id])

  end

def create
    @booking = Booking.new(Booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

def booking_params
    params.require(:booking).permit(:user, :booking_date, :outfit)
  end
end

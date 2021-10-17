class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
   # @outfit = Outfit.find(params[:outfit_id])
  end

  def show
    @booking = Booking.find(params[:id])

  end

  def create
    @booking = Booking.new(booking_params)
    @outfit = Outfit.find(params[:outfit_id])
    @booking.outfit = @outfit
      if @booking.save
      redirect_to bookings_path
      end
  end


  private

def booking_params
    params.require(:booking).permit(:user, :booking_date, :outfit)
  end

    def destroy
        @booking = Booking.find(params[:id])
        @booking.destroy
        redirect_to outfit_path
      end
end



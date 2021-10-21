class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
   # @outfit = Outfit.find(params[:outfit_id])
  end

  def show
    @booking = Booking.find(params[:id])

  end

  def create
    outfit = Outfit.find(params[:outfit_id])
    @booking = Booking.new(user: current_user, outfit: outfit, start_date: booking_params[:start_date], end_date: booking_params[:end_date])
      if @booking.save
      redirect_to bookings_path
      end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end



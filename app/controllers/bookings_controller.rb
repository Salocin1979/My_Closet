class BookingsController < ApplicationController

    def destroy
        @booking = Booking.find(params[:id])
        @booking.destroy
        redirect_to outfit_path
      end
end

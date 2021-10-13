class BookingsController < ApplicationController

 
    def destroy
        @booking = Booking.find(params[:id])
        @booking.destroy
        #redirect_to outfits_path(@review.list)
      end

   end

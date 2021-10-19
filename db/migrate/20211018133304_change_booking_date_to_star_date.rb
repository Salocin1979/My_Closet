class ChangeBookingDateToStarDate < ActiveRecord::Migration[6.0]
  def change
      rename_column :bookings, :booking_date, :start_date
 end
end

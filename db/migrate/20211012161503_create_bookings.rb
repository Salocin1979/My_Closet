class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :booking_date
      t.references :user, null: false, foreign_key: true
      t.references :outfit, null:false, foreign_key: true

      t.timestamps
    end
  end
end
class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :data
      t.string :city

      t.timestamps
    end
  end
end

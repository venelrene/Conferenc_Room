class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :start_at
      t.datetime :ends_at
      t.text :notes
      t.string :event_title

      t.timestamps
    end
  end
end

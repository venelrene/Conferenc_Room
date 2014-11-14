class AddUserToReservation < ActiveRecord::Migration
  def change
    add_reference :reservations, :user, index: true
  end
end

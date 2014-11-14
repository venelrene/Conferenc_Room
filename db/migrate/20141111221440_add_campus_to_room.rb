class AddCampusToRoom < ActiveRecord::Migration
  def change
    add_reference :rooms, :campus, index: true
  end
end

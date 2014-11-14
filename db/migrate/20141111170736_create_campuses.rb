class CreateCampuses < ActiveRecord::Migration
  def change
    create_table :campuses do |t|
      t.string :name
      t.string :city
      t.string :state
      t.integer :phone_number
      t.integer :zip_code
      t.string :street_address

      t.timestamps
    end
  end
end

class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :reservations, :start_at, :starts_at
  end
end

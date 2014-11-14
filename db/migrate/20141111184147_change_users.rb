class ChangeUsers < ActiveRecord::Migration
  def change
    change_column :users, :role, :string, limit:25, default:'student'
  end
end

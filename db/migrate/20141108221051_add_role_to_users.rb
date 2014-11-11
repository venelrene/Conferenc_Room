class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string, limit:25, default:'user'
  end
end

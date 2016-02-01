class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile, :integer
    add_column :users, :area, :integer
  end
end

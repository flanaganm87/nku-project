class AddGroupCodeToUser < ActiveRecord::Migration
  def change
    add_column :users, :group_code, :integer
  end
end

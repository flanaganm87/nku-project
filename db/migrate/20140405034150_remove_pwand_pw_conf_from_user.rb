class RemovePwandPwConfFromUser < ActiveRecord::Migration
  def change
  end
  def up
    remove_column :users, :password, :password_confirmation
    end
end

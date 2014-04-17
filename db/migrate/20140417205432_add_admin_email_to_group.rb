class AddAdminEmailToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :adminEmail, :string
  end
end

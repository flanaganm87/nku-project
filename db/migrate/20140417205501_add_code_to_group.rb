class AddCodeToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :code, :integer
  end
end

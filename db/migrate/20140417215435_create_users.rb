class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :f_name
      t.string :l_name
      t.string :email
      t.string :gravatar
      t.text :groups_id
      t.string :password_digest

      t.timestamps
    end
  end
end

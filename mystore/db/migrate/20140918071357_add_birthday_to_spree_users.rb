class AddBirthdayToSpreeUsers < ActiveRecord::Migration
  def change
    add_column :spree_users, :birthday,  :datetime
  end
end

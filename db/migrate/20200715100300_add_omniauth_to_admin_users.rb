class AddOmniauthToAdminUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_users, :provider, :string
    add_column :admin_users, :uid, :string
  end
end

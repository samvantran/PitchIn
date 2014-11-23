class AddProviderUidToVolunteer < ActiveRecord::Migration
  def change
    add_column :volunteers, :provider, :string
    add_column :volunteers, :uid, :string
  end
end

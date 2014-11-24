class AddProviderUidToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :provider, :string
    add_column :organizations, :uid, :string
  end
end

class AddPhotoToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :photo, :string
  end
end

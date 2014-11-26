class AddPhotoToVolunteer < ActiveRecord::Migration
  def change
    add_column :volunteers, :photo, :string
  end
end

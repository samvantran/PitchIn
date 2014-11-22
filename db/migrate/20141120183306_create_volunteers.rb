class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string   :name
      t.datetime :datetime
      t.string   :location

      t.timestamps null: false
    end
  end
end

class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.datetime  :date_time
      t.integer   :user_id
      t.integer   :organization_id

      t.timestamps null: false
    end
  end
end

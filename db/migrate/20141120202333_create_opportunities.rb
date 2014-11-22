class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string    :name
      t.datetime  :datetime
      t.integer   :organization_id
      t.integer   :volunteer_id

      t.timestamps null: false
    end
  end
end

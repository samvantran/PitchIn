class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.integer :skill_id
      t.integer :opportunity_id

      t.timestamps null: false
    end
  end
end

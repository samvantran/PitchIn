class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      t.integer :volunteer_id
      t.integer :skill_id

      t.timestamps null: false
    end
  end
end

class CreateSaves < ActiveRecord::Migration[7.0]
  def change
    create_table :saves do |t|
      t.integer :level
      t.integer :death
      t.integer :wand
      t.integer :paralysis
      t.integer :breath
      t.integer :spells

      t.timestamps
    end
  end
end

class CreateSpells < ActiveRecord::Migration[7.0]
  def change
    create_table :spells do |t|
      t.string :name
      t.integer :level
      t.string :duration
      t.string :range
      t.text :text

      t.timestamps
    end
  end
end

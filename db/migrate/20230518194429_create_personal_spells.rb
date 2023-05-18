class CreatePersonalSpells < ActiveRecord::Migration[7.0]
  def change
    create_table :personal_spells do |t|
      t.belongs_to(:spell, foreign_key: true)
      t.belongs_to(:character, foreign_key: true)
      t.boolean :memorized
      
      t.timestamps
    end
  end
end

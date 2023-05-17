class CreateSpellPerLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :spell_per_levels do |t|
      t.integer :level
      t.integer :first
      t.integer :second
      t.integer :third
      t.integer :fourth
      t.integer :fifth
      t.integer :sixth

      t.timestamps
    end
  end
end

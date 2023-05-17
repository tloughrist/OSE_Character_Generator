class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :level
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :wisdom
      t.integer :intelligence
      t.integer :charisma
      t.integer :hp
      t.integer :xp
      t.integer :armor_class
      t.string :climb_sheer_surfaces
      t.string :find_and_remove_treasure_traps
      t.string :hear_noise
      t.string :hide_in_shadows
      t.string :move_silently
      t.string :open_locks
      t.string :pick_pockets
      t.string :read_languages
      t.string :falling
      t.string :tightrope_walking
      t.string :tracking

      t.timestamps
    end
  end
end

class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.belongs_to(:user, foreign_key: true)
      t.belongs_to(:char_class, foreign_key: true)
      t.belongs_to(:char_heritage, foreign_key: true)
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
      t.integer :coins
      t.integer :armor_class
      t.integer :climb_sheer_surfaces
      t.integer :find_and_remove_treasure_traps
      t.integer :hear_noise
      t.integer :hide_in_shadows
      t.integer :move_silently
      t.integer :open_locks
      t.integer :pick_pockets
      t.integer :read_languages
      t.integer :falling
      t.integer :tightrope_walking
      t.integer :tracking
      t.integer :assassination

      t.timestamps
    end
  end
end

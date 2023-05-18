class CreateCharHeritages < ActiveRecord::Migration[7.0]
  def change
    create_table :char_heritages do |t|
      t.string :name
      t.text :special
      t.integer :mod_strength
      t.integer :mod_constitution
      t.integer :mod_dexterity
      t.integer :mod_wisdom
      t.integer :mod_intelligence
      t.integer :mod_charisma
      t.integer :min_strength
      t.integer :min_constitution
      t.integer :min_dexterity
      t.integer :min_wisdom
      t.integer :min_intelligence
      t.integer :min_charisma
      t.integer :max_acrobat
      t.integer :max_assassin
      t.integer :max_barabarian
      t.integer :max_bard
      t.integer :max_cleric
      t.integer :max_druid
      t.integer :max_fighter
      t.integer :max_illusionist
      t.integer :max_knight
      t.integer :max_magic_user
      t.integer :max_paladin
      t.integer :max_ranger
      t.integer :max_thief
      t.string :languages

      t.timestamps
    end
  end
end

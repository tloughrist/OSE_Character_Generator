class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.references :char_class, null: true, foreign_key: true
      t.references :char_heritage, null: true, foreign_key: true
      t.integer :level
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :wisdom
      t.integer :intelligence
      t.integer :charisma
      t.integer :save_v_death
      t.integer :save_v_wands
      t.integer :save_v_paralysis
      t.integer :save_v_breath
      t.integer :save_v_spells
      t.integer :hp
      t.integer :xp
      t.integer :next_lvl

      t.timestamps
    end
  end
end

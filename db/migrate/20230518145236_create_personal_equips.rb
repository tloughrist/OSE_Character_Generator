class CreatePersonalEquips < ActiveRecord::Migration[7.0]
  def change
    create_table :personal_equips do |t|
      t.belongs_to(:equip, foreign_key: true)
      t.belongs_to(:character, foreign_key: true)
      t.timestamps
    end
  end
end

class CreateCharClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :char_classes do |t|
      t.string :name
      t.string :requirements
      t.string :prime_requisite
      t.string :armor_allowed
      t.string :weapons_allowed
      t.string :languages
      t.text :description
      t.text :special

      t.timestamps
    end
  end
end

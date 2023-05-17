class CreateCharClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :char_classes do |t|
      t.string :name
      t.integer :hd

      t.timestamps
    end
  end
end

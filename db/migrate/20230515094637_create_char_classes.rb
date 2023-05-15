class CreateCharClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :char_classes do |t|
      t.string :name
      t.integer :hd
      t.integer :thac0, array: true, default: []
      t.integer :saves, array: true, default: []

      t.timestamps
    end
  end
end

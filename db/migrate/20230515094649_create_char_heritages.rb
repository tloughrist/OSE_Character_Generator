class CreateCharHeritages < ActiveRecord::Migration[7.0]
  def change
    create_table :char_heritages do |t|
      t.string :name

      t.timestamps
    end
  end
end

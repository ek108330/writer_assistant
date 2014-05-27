class CreateChapitres < ActiveRecord::Migration
  def change
    create_table :chapitres do |t|
      t.integer :numero
      t.string :titre

      t.timestamps
    end
    add_index :chapitres, [:numero, :titre]
  end
end

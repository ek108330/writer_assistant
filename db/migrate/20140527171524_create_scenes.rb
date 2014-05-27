class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.text :recit
      t.date :periode
      t.string :lieu
      t.integer :id_chapitre

      t.timestamps
    end
  end
end

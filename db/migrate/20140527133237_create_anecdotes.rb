class CreateAnecdotes < ActiveRecord::Migration
  def change
    create_table :anecdotes do |t|
      t.text :sujet
      t.string :theme
      t.integer :id_chapitre

      t.timestamps
    end
  end
end

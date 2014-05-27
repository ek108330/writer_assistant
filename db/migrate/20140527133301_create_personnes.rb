class CreatePersonnes < ActiveRecord::Migration
  def change
    create_table :personnes do |t|
      t.string :nom
      t.integer :id_scene

      t.timestamps
    end
  end
end

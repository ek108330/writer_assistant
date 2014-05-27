class CreatePersonnes < ActiveRecord::Migration
  def change
    create_table :personnes do |t|
      t.string :nom
      t.integer :scene_id

      t.timestamps
    end
  end
end

class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :priority
      t.string :site
      t.string :bio
      t.string :photo
      t.string :video
      t.text :notes

      t.timestamps
    end
  end
end

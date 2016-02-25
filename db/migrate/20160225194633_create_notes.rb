class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :category
      t.integer :rating
      t.text :owner
      t.datetime :create_note

      t.timestamps null: false
    end
  end
end

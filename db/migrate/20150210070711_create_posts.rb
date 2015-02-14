class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :pictures
      t.references :album, index: true
      t.text :description
      t.date :date

      t.timestamps null: false
    end
    add_foreign_key :posts, :albums
  end
end

class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :name
      t.string :desc
      t.string :author
      t.integer :length
      t.references :brand, index: true
      t.references :category, index: true
      t.string :image
      t.integer :number_or_view
      t.string :link

      t.timestamps null: false
    end
    add_foreign_key :books, :brands
    add_foreign_key :books, :categories
  end
end

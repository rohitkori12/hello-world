class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :category
      t.decimal :version
      t.date :publishedDate
      t.string :typeofBook
      t.integer :quantity

      t.timestamps
    end
  end
end

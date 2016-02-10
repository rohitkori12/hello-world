class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.references :lib, index: true

      t.timestamps
    end
  end
end

class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :Name

      t.timestamps
    end
  end
end

class CreateLibs < ActiveRecord::Migration
  def change
    create_table :libs do |t|
      t.string :name

      t.timestamps
    end
  end
end

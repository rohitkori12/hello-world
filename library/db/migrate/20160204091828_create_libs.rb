class CreateLibs < ActiveRecord::Migration
  def change
    create_table :libs do |t|
      t.string :Name

      t.timestamps
    end
  end
end

class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :name
      t.integer :contactno

      t.timestamps
    end
  end
end

class AddNameToLib < ActiveRecord::Migration
  def change
    add_column :libs, :name, :string
  end
end

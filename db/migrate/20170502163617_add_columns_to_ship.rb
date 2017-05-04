class AddColumnsToShip < ActiveRecord::Migration
  def change
    add_column :ships, :name, :string
    add_column :ships, :location, :string
    add_column :ships, :containers, :integer
  end
end

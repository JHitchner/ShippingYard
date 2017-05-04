class AddColumnsToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :description, :string
    add_column :jobs, :origin, :string
    add_column :jobs, :destination, :string
    add_column :jobs, :jobCost, :decimal
    add_column :jobs, :containersNeeded, :integer
  end
end

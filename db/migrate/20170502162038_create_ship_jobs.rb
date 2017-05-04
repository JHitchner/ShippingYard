class CreateShipJobs < ActiveRecord::Migration
  def change
    create_table :ship_jobs do |t|

      t.timestamps null: false
    end
  end
end

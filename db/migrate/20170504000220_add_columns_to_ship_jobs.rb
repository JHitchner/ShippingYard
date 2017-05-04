class AddColumnsToShipJobs < ActiveRecord::Migration
  def change
    add_column :ship_jobs, :ship_id, :integer
    add_column :ship_jobs, :job_id, :integer
  end
end

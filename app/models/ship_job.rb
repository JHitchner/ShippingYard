class ShipJob < ActiveRecord::Base
  # attr_accessible :job_id, :ship_id
  belongs_to :ships
  belongs_to :jobs
end

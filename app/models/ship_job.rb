class ShipJob < ActiveRecord::Base
  # attr_accessible :job_id, :ship_id
  belongs_to :ship
  belongs_to :job
end

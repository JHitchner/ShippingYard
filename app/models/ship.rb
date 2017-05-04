class Ship < ActiveRecord::Base
  has_many :ship_jobs, :dependent => :destroy
  has_many :jobs, :through => :ship_jobs

  validates :name, uniqueness: true
end

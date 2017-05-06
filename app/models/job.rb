class Job < ActiveRecord::Base
  has_many :ship_jobs, :dependent => :destroy
  has_many :ships, :through => :ship_jobs
  accepts_nested_attributes_for :ship_jobs

  validates :jobTitle, uniqueness: true
  validates :description, length: {minimum: 50}
  validates :jobCost, :numericality => {greater_than: 1000}
  # Look over later
  # validates :origin, inclusion: { in: %w(Miami Toronto NewYork)}
end

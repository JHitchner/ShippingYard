class Ship < ActiveRecord::Base
  has_many :ship_jobs, :dependent => :destroy
  has_many :jobs, :through => :ship_jobs

  validates :name, uniqueness: true

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/default.png"
 validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end

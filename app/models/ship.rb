class Ship < ActiveRecord::Base
  has_many :ship_jobs, :dependent => :destroy
  has_many :jobs, :through => :ship_jobs

  validates :name, uniqueness: true

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url:"images/:style_default.png"
 validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
# <%=image_tag("salty_land.png", :class => "saltyL") %>
# "/images/:style/default.png"


# things to finish - Fleet Page css, image link default
# signOut css/ Edit js jobs/new job link, new ship link- ujs ajax call-

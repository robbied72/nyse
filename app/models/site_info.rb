class SiteInfo < ActiveRecord::Base
  attr_accessible :address_line_1, :address_line_2, :city, :email, :google_map_api, :meta_description, :meta_keywords, :name, :state, :telephone, :url, :zip, :facebook, :twitter, :linkedin
end

class Company < ActiveRecord::Base
  attr_accessible :address_line_2, :addrress_line_1, :city, :contact_number, :email, :logo, :name, :state, :url, :zipcode, :image, :company_admins

    has_attached_file :image

geocoded_by :zipcode
after_validation :geocode

has_many :vacancies
has_many :company_admins
has_many :tasks
has_many :events

end

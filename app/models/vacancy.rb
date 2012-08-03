class Vacancy < ActiveRecord::Base
  attr_accessible :active, :company_id, :jobtag_ids, :contact_email, :contact_name, :description, :expiry_date, :job_type_id, :location_id, :publish_date, :salary, :sector_id, :title, :zipcode

  is_impressionable

  belongs_to :sector
  belongs_to :job_type
  belongs_to :company
  belongs_to :location

  has_many :Jobtagerization
  has_and_belongs_to_many :jobtags
  has_many :jobtags, through: :Jobtagerization

  geocoded_by :zipcode
  after_validation :geocode

  extend FriendlyId
  friendly_id :title, use: :slugged

end
class Location < ActiveRecord::Base
  attr_accessible :title

  has_many :vacancies
  has_many :users

  has_many :locationization
  has_many :users, through: :locationization

end

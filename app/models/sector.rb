class Sector < ActiveRecord::Base
  attr_accessible :name

  has_many :vacancies
  has_many :sectorization
  has_many :users, through: :sectorization
  
end

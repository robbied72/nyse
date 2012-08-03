class JobType < ActiveRecord::Base
  attr_accessible :name

  has_many :vacancies
  has_many :users
  
end

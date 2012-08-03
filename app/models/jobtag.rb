class Jobtag < ActiveRecord::Base
  attr_accessible :title, :vacancy_ids

  has_many :Jobtagerization
  has_and_belongs_to_many :vacancies
  has_many :vacancies, through: :Jobtagerization

end

class Jobtagerization < ActiveRecord::Base
  belongs_to :jobtag
  belongs_to :vacancy
end
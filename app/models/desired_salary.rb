class DesiredSalary < ActiveRecord::Base
  attr_accessible :title

  has_many :users

end

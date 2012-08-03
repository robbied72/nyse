class CurrentSalary < ActiveRecord::Base
  attr_accessible :title

  has_many :users

end

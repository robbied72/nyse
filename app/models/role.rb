class Role < ActiveRecord::Base
  attr_accessible :title

  has_many :company_admins

end

class BlogCat < ActiveRecord::Base
  attr_accessible :title

  has_many :blogs

end

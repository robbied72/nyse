class NewsSignup < ActiveRecord::Base
  attr_accessible :email, :name

  validates_presence_of :name
  validates_presence_of :email
  
end

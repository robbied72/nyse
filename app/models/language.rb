class Language < ActiveRecord::Base
  attr_accessible :title

  has_many :users

  has_many :languagization
  has_many :users, through: :languagization
  
end

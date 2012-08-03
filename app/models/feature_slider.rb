class FeatureSlider < ActiveRecord::Base
  attr_accessible :active, :image, :title, :description
  has_attached_file :image
end

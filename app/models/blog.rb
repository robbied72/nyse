class Blog < ActiveRecord::Base
  attr_accessible :active, :blog_cat_id, :content, :tags, :teaser, :title

  belongs_to :blog_cat

end

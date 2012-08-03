class Page < ActiveRecord::Base

  attr_accessible :active, :content, :expire, :menu, :parent_id, :parent, :page_order, :publish, :slug, :teasertext, :title, :lft, :rgt

  extend FriendlyId
  friendly_id :title, use: :slugged

  acts_as_nested_set


end

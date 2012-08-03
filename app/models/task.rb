class Task < ActiveRecord::Base
  attr_accessible :company_admin_id, :company_id, :complete, :due, :note, :title

  belongs_to :company_admin
  belongs_to :company

  has_calendar :start_time => :due
  
end

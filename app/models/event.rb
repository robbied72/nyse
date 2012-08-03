class Event < ActiveRecord::Base
  attr_accessible :cal_priority_id, :company_admin_id, :company_id, :start_time, :note, :title

  belongs_to :cal_priority
  belongs_to :company_admin
  belongs_to :company

  has_calendar

end

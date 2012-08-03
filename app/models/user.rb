class User < ActiveRecord::Base

  attr_accessible :name, :first_name, :last_name, :email, :location_id, :job_type_id, :desired_salary_id, :location_ids, :work_in_usa, :home_phone, :cell_phone, :zipcode, :sector_ids, :language_ids, :years_experience_id, :current_job_title, :current_salary_id, :key_skills, :education_level_id, :personal_summary, :desired_job_title

  has_many :sectorization
  has_and_belongs_to_many :sectors
  has_many :sectors, through: :sectorization

  has_many :Languagization
  has_and_belongs_to_many :languages
  has_many :languages, through: :Languagization

  has_many :Locationization
  has_and_belongs_to_many :locations
  has_many :locations, through: :Locationization

  belongs_to :current_salary
  belongs_to :location
  belongs_to :language
  belongs_to :education_level
  belongs_to :years_experience
  belongs_to :desired_salary
  belongs_to :job_type

  geocoded_by :zipcode
  after_validation :geocode

  extend FriendlyId
  friendly_id :name, use: :slugged

#  FACEBOOK AUTHENTICATION

#  def self.from_omniauth(auth)
#    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
#      user.provider = auth.provider
#      user.uid = auth.uid
#      user.name = auth.info.name
#      user.birthday = auth.extra.raw_info.birthday
#      user.gender = auth.extra.raw_info.gender
#      user.nickname = auth.info.nickname
#      user.first_name = auth.info.first_name
#      user.last_name = auth.info.last_name
#      user.urls = auth.info.link
#      user.image = auth.info.image
#      user.oauth_token = auth.credentials.token
#      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
#      user.save!
#  end

	def self.from_omniauth(auth)
	  where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
	    user.provider = auth.provider
	    user.uid = auth.uid
	    user.name = auth.info.name
  		user.first_name = auth.info.first_name
  		user.last_name = auth.info.last_name
      user.image = auth.info.image
      user.industry = auth.info.industry
      user.current_job_title = auth.info.headline
      user.pub_profile = auth.info.urls.public_profile
      #user.interests = auth.info.interests
	    user.save!
	  end
	end
end
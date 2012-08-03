class CompanyAdmin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :company_id, :role_id, :first_name, :last_name, :position
  # attr_accessible :title, :body

  belongs_to :company
  belongs_to :role
  has_many :tasks
  has_many :events

end

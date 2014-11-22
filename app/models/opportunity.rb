class Opportunity < ActiveRecord::Base
  has_many :needs
  has_many :skills, through: :needs
  has_many :volunteers
  belongs_to :organization
end

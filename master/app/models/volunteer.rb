class Volunteer < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, :through => :proficiencies
  has_one :opportunity
end

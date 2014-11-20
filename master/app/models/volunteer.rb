class Volunteer < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, :through => :proficiences
  has_one :opportunity

end

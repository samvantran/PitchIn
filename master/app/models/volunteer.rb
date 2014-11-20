class Volunteer < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, :through => :proficiences
  belongs_to :opportunity

end

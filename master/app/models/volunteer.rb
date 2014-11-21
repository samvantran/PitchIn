class Volunteer < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, :through => :proficiencies
  has_one :opportunity

  accepts_nested_attributes_for :proficiencies

end

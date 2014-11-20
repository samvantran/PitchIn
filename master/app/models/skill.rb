class Skill < ActiveRecord::Base
  has_many :needs
  has_many :proficiencies
end

class Organization < ActiveRecord::Base
  has_many :opportunities
  has_many :needs, through: :opportunities
end

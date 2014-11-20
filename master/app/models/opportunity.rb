class Opportunity < ActiveRecord::Base
  has_many :needs
  has_many :volunteers
end

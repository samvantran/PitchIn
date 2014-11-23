class Volunteer < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, :through => :proficiencies
  has_one :opportunity

  validates :uid, :uniqueness => {:scope => :provider}


  def self.find_or_create_from_auth_hash(auth_hash)
    find_by_omniauth(auth_hash) || create_with_omniauth(auth_hash)
  end

  def self.create_with_omniauth(auth_hash)
    create(
            :uid      => auth_hash[:uid],
            :provider => auth_hash[:provider],
            :name     => auth_hash[:info][:name]
          )
  end

  def self.find_by_omniauth(auth_hash)
    find_by(uid: auth_hash[:uid], provider: auth_hash[:provider] )
  end
end

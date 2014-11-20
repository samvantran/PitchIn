class Need < ActiveRecord::Base
  belongs_to :opportunity
  belongs_to :skill

end

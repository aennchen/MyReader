class UserSource < ActiveRecord::Base
   belongs_to :available_source
   belongs_to :category
   has_one :user, through: :category
end

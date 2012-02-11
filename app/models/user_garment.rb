class UserGarment < ActiveRecord::Base
  belongs_to :user
  belongs_to :garment

  validates_uniqueness_of :garment_id, :scope => :user_id
end

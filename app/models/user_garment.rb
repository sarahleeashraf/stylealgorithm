class UserGarment < ActiveRecord::Base
  belongs_to :user
  belongs_to :garment

  validates_uniqueness_of :garment_id, :scope => :user_id

  scope :my_garments, lambda{ |type| 
    joins("join garments on garments.id = user_garments.garment_id").
    where("garments.type = ?", type)
  }
end

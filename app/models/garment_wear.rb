class GarmentWear < Wear
  belongs_to :garment

  validates_uniqueness_of :garment_id, :scope => [:user_id, :date]
end

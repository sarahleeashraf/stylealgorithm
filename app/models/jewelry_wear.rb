class JewelryWear < Wear
  belongs_to :jewelry

  validates_uniqueness_of :jewelry_id, :scope => [:user_id, :date]
end

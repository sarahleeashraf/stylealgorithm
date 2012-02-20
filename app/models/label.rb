class Label < ActiveRecord::Base
  extend SelectOptions

  validates :name, presence: true, uniqueness: true

  has_many :garments
end

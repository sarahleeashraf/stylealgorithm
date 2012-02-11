class Label < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :garments
end

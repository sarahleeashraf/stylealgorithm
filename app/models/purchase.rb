class Purchase < ActiveRecord::Base
  belongs_to :user
  belongs_to :store
  belongs_to :garment

  validates_presence_of :user, :garment
end

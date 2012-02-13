class Wear < ActiveRecord::Base
  belongs_to :user
  belongs_to :garment

  validates_presence_of :date
  validates_uniqueness_of :garment_id, :scope => [:user_id, :date]
end

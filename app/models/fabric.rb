class Fabric < ActiveRecord::Base
  extend SelectOptions
  has_many :garments
end

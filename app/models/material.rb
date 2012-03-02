class Material < ActiveRecord::Base
  extend SelectOptions
  has_many :jewelry

end

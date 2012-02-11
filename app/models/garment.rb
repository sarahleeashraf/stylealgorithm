class Garment < ActiveRecord::Base
  module Season
   FallWinter = 'fall_winter'
   SpringSummer = 'spring_summer'
   Holiday = 'holiday'
   Resort = 'resort'

   All = constants.map {|c| const_get(c) }
  end

  module GarmentTypes
    Dress = 'dress'

    All = constants.map { |c| const_get(c) }
  end

  belongs_to :label
  has_many :wears
  has_many :users, :through => :user_garments
  has_many :user_garments
  validates_presence_of :label
end

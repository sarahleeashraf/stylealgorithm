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
  has_many :purchases
  has_many :wears
  validates_presence_of :label
end

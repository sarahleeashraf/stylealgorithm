class Garment < ActiveRecord::Base
  module Season
   FallWinter = 'fall_winter'
   SpringSummer = 'spring_summer'
   Holiday = 'holiday'
   Resort = 'resort'

   All = constants.map {|c| const_get(c) }
  end

  module Types
    Dress = 'Dress'
    Top = 'Top'
    All = constants.map { |c| const_get(c) }
  end

  belongs_to :label
  belongs_to :color
  has_many :wears
  has_many :users, :through => :user_garments
  has_many :user_garments
  validates_presence_of :label, :color

  attr_accessible :label, :color, :print, :season, :year, :description, :style

  def pretty_name  
    self.name ? self.name : self.color.name.to_s + ' '+ self.label.name.to_s + ' '+ self.type.to_s
  end
 
end

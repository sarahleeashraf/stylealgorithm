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
    Tee = 'Tee'
    All = constants.map { |c| const_get(c) }
  end

  module Style
    All = []
  end

  belongs_to :label
  belongs_to :color
  belongs_to :fabric
  belongs_to :print
  belongs_to :user
  has_many :wears
  validates_presence_of :label, :color, :user

  attr_accessible :name, :label, :color, :print, :season, :year, :description, :style

  def pretty_name 
    (self.name ? self.name.to_s : '') + ' ' + (self.color ? color.name.to_s : '') + ' ' + (self.label ? self.label.name.to_s : '') + ' ' + (self.type ? self.type.to_s: '')
  end

  def self.inherited(child)
    child.instance_eval do
      def model_name
        Garment.model_name
      end
    end
    super
  end 
end

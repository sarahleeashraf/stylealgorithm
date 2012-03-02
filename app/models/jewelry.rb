class Jewelry < ActiveRecord::Base
  module Types
    Bracelet = "Bracelet"
    Necklace = "Necklace"
    Earrings = "Earrings"
    Ring = "Ring"

    All = constants.map { |c| const_get(c) }
  end

  belongs_to :user
  belongs_to :label
  belongs_to :material
  belongs_to :color

  attr_accessible :type, :name, :label, :material, :style, :color, :user
  validates_presence_of :type, :name, :label, :user

  def pretty_name
    name ? name.to_s : id.to_s
  end


  def self.inherited(child)
    child.instance_eval do
      def model_name
        Jewelry.model_name
      end 
    end 
    super
  end 

end

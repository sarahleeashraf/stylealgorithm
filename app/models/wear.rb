class Wear < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :date, :type, :user

  def self.create_wears(user, item_ids, class_name, date)
    message = "Successfully saved "

    item_ids.each do |item_id|
      item = class_name.find(item_id) unless item_id == nil

      if item
        case class_name.name
        when "Garment"
          wear = GarmentWear.create(:garment => item, :user => user, :date => date) 
          p wear
        when "Jewelry"
          wear = JewelryWear.create(:jewelry => item, :user => user, :date => date)
        end 
        message << item.pretty_name + ", "
     end 
    end 

    message + " on " + date.to_s
  end 
end

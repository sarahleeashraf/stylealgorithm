class AddJewelryIdToWear < ActiveRecord::Migration
  def change
    add_column :wears, :jewelry_id, :integer
  end
end

class AddFabricIdToGarment < ActiveRecord::Migration
  def change
    add_column :garments, :fabric_id, :integer
  end
end

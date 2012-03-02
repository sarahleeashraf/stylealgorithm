class AddStatusToGarment < ActiveRecord::Migration
  def change
    add_column :garments, :status, :string
  end
end

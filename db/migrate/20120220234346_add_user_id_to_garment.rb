class AddUserIdToGarment < ActiveRecord::Migration
  def change
    add_column :garments, :user_id, :string
  end
end

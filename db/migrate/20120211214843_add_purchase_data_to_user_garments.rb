class AddPurchaseDataToUserGarments < ActiveRecord::Migration
  def change
    add_column :user_garments, :purchased_at, :datetime
    add_column :user_garments, :price, :decimal
  end
end

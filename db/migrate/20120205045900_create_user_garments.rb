class CreateUserGarments < ActiveRecord::Migration
  def change
    create_table :user_garments do |t|
      t.integer :user_id
      t.integer :garment_id

      t.timestamps
    end
  end
end

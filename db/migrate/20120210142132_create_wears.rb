class CreateWears < ActiveRecord::Migration
  def change
    create_table :wears do |t|
      t.datetime, :date
      t.integer, :garment_id
      t.integer :user_id

      t.timestamps
    end
  end
end

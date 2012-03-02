class CreateJewelries < ActiveRecord::Migration
  def change
    create_table :jewelries do |t|
      t.string :name
      t.string :type
      t.integer :label_id
      t.integer :material_id
      t.string :style
      t.integer :color_id
      t.integer :user_id
      t.timestamps
    end
  end
end

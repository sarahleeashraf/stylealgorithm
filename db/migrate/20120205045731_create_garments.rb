class CreateGarments < ActiveRecord::Migration
  def change
    create_table :garments do |t|
      t.string :name
      t.string :type
      t.integer :label_id
      t.integer :color_id
      t.integer :print_id
      t.string :season
      t.integer :year
      t.text :description

      t.timestamps
    end
  end
end

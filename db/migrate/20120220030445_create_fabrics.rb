class CreateFabrics < ActiveRecord::Migration
  def change
    create_table :fabrics do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

class AddNecklineToGarment < ActiveRecord::Migration
  def change
    add_column :garments, :neckline, :string
  end
end

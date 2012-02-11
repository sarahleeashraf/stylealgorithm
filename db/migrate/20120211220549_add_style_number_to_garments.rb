class AddStyleNumberToGarments < ActiveRecord::Migration
  def change
    add_column :garments, :style_number, :string
  end
end

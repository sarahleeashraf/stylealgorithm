class AddStyleToGarmentType < ActiveRecord::Migration
  def change
    add_column :garments, :style, :string
    add_column :garments, :hem_length, :string
    add_column :garments, :sleeve_length, :string
  end
end

class AddSwatchToColors < ActiveRecord::Migration
  def change
    add_column :colors, :color_uid, :integer
  end
end

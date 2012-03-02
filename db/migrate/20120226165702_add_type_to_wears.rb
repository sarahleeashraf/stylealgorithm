class AddTypeToWears < ActiveRecord::Migration
  def change
    add_column :wears, :type, :string
  end
end

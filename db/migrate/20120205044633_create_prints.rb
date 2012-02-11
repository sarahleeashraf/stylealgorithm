class CreatePrints < ActiveRecord::Migration
  def change
    create_table :prints do |t|
      t.string :name
      t.string :swatch_uid

      t.timestamps
    end
  end
end

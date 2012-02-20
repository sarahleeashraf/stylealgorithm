class RemoveUserGarments < ActiveRecord::Migration
  def up
    drop_table('user_garments')
  end

  def down
  end
end

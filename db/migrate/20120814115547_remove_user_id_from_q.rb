class RemoveUserIdFromQ < ActiveRecord::Migration
  def up
    remove_column :qs, :user_id
  end

  def down
    add_column :qs, :user_id, :integer
  end
end

class AddUserIdToQs < ActiveRecord::Migration
  def change
    add_column :qs, :user_id, :integer
  end
end

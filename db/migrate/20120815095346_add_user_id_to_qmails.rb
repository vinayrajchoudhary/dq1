class AddUserIdToQmails < ActiveRecord::Migration
  def change
    add_column :qmails, :user_id, :integer
  end
end

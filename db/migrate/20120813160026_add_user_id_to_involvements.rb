class AddUserIdToInvolvements < ActiveRecord::Migration
  def change
    add_column :involvements, :user_id, :integer
  end
end

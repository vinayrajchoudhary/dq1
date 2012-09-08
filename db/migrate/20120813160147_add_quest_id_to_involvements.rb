class AddQuestIdToInvolvements < ActiveRecord::Migration
  def change
    add_column :involvements, :quest_id, :integer
  end
end

class AddQuestIdToQ < ActiveRecord::Migration
  def change
    add_column :qs, :quest_id, :integer
  end
end

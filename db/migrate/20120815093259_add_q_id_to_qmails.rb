class AddQIdToQmails < ActiveRecord::Migration
  def change
    add_column :qmails, :q_id, :integer
  end
end

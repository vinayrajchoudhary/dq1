class CreateLifespans < ActiveRecord::Migration
  def change
    create_table :lifespans do |t|

      t.timestamps
    end
  end
end

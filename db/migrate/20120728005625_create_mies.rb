class CreateMies < ActiveRecord::Migration
  def change
    create_table :mies do |t|

      t.timestamps
    end
  end
end

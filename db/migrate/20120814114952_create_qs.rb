class CreateQs < ActiveRecord::Migration
  def change
    create_table :qs do |t|
      t.string :title

      t.timestamps
    end
  end
end

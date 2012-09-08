class CreateQmails < ActiveRecord::Migration
  def change
    create_table :qmails do |t|
      t.text :content

      t.timestamps
    end
  end
end

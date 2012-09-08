class CreateInvolvements < ActiveRecord::Migration
  def change
    create_table :involvements do |t|

      t.timestamps
    end
  end
end

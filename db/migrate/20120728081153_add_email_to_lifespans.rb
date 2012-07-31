class AddEmailToLifespans < ActiveRecord::Migration
  def change
    add_column :lifespans, :email, :string
  end
end

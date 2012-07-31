class AddPasswordToLifespans < ActiveRecord::Migration
  def change
    add_column :lifespans, :password, :string
  end
end

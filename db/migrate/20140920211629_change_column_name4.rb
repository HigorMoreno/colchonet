class ChangeColumnName4 < ActiveRecord::Migration
  def change
  	rename_column :users, :confirmated_at, :confirmed_at
  end
end

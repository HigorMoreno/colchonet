class ChangeColumnName2 < ActiveRecord::Migration
  def change
  	rename_column :rooms, :tittle, :tittle
  end
end

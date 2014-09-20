class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :rooms, :tittle, :tittle
  end
end

class ChangeColumnName3 < ActiveRecord::Migration
  def change
  	rename_column :rooms, :tittle, :title
  end
end

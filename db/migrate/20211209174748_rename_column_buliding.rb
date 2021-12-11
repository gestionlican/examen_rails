class RenameColumnBuliding < ActiveRecord::Migration[6.1]
  def change
    rename_column :apartments, :buliding_id, :building_id
  end
end

class RenameBulidingsToBuildings < ActiveRecord::Migration[6.1]
  def change
    rename_table :bulidings, :buildings
  end
end

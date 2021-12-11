class CreateBulidings < ActiveRecord::Migration[6.1]
  def change
    create_table :bulidings do |t|
      t.string :name
      t.string :city
      t.string :address

      t.timestamps
    end
  end
end

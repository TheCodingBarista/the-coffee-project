class AddColumnToStores < ActiveRecord::Migration
  def change
    add_column :stores, :location_name, :string
  end
end

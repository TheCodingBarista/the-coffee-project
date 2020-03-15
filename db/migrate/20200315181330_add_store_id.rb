class AddStoreId < ActiveRecord::Migration
  def change
    add_column :users, :store_id, :integer
    add_column :items, :store_id, :integer
  end
end

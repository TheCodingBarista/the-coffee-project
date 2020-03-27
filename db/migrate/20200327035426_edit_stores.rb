class EditStores < ActiveRecord::Migration
  def change
    remove_column :stores, :user_id, :integer
    remove_column :stores, :item_id, :integer

  end
end

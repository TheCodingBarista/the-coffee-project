class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.integer :user_id
      t.integer :item_id
      t.timestamps null: false
    end
  end
end

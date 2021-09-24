class AddDeliveryIdAndAccountIdToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :account_id, :integer
    add_index :orders, :account_id
    add_column :orders, :delivery_id, :integer
    add_index :orders, :delivery_id
  end
end

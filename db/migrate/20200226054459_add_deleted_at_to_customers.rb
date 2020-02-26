class AddDeletedAtToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :deleted_at, :boolean, default: false, null: false
  end
end

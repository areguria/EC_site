class AddDeletedAtToDeliveries < ActiveRecord::Migration[5.2]
  def change
    add_column :deliveries, :deleted_at, :datetime
  end
end

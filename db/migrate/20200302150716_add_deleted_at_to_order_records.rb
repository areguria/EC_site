class AddDeletedAtToOrderRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :order_records, :deleted_at, :datetime
  end
end

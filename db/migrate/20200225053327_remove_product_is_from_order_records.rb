class RemoveProductIsFromOrderRecords < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_records, :product_is, :integer
    
  end
end

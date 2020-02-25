class CreateOrderRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :order_records do |t|
    	t.integer :product_id ,foreign_key: true
    	t.integer :order_id   ,foreign_key: true
    	t.integer :counts
        t.integer :status

      t.timestamps
    end
  end
end

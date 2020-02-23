class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
    	t.integer :user_id,foreign_key: true
    	t.integer :pay_status
    	t.integer :status
    	t.integer :end_price
    	t.string  :zip_code
    	t.string  :adress
    	t.string  :name

      t.timestamps
    end
  end
end

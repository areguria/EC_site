class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
    	t.integer :user_id,   foreign_key: true
    	t.integer :product_id,foreign_key: true
    	t.string  :counts



      t.timestamps
    end
  end
end

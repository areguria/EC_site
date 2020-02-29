class AddDeletedAtToCartItems < ActiveRecord::Migration[5.2]
  def change
    add_column :cart_items, :deleted_at, :datetime
  end
end

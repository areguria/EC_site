class RemoveEndPriceFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :end_price, :integer
  end
end

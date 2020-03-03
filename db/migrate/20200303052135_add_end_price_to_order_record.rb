class AddEndPriceToOrderRecord < ActiveRecord::Migration[5.2]
  def change
    add_column :order_records, :end_price, :integer
  end
end

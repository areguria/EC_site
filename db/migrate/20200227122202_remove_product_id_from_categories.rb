class RemoveProductIdFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :product_id, :integer,foregin_key: true
  end
end

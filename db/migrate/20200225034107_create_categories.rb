class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
    	t.references :product_id, foregin_key: true
    	t.string :name
    	t.boolean :status ,default: false, null: false

      t.timestamps
    end
  end
end

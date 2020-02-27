class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
    	t.string :name
    	t.text :introduction
    	t.boolean :status ,default: false, null: false
    	t.integer :price
    	t.text :product_image_id


      t.timestamps
    end
  end
end

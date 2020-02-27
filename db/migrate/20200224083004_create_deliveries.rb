class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
    	t.references :user_id, foregin_key: true
    	t.string  :address
    	t.string  :zip_code
    	t.string  :name

      t.timestamps
    end
  end
end

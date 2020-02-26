class RemoveDeletedAtFormCustomers < ActiveRecord::Migration[5.2]
  def change
  	def up
  		remove_column :deleted_at, :boolean
  	end

  	def down
  		add_column :deleted_at, :boolean, default: false
  	end
  end
end

class AddNameLastToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :name_last, :string
    add_column :customers, :name_last_kana, :string
    add_column :customers, :name_first, :string
    add_column :customers, :name_first_kana, :string
    add_column :customers, :address, :string
    add_column :customers, :zip_code, :string
    add_column :customers, :phone_number, :string
    add_column :customers, :status, :booleant, default: false, null: false
  end
end

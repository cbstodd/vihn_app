class AddProfileInfoToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :profile_info, :text
    add_column :customers, :phone_number, :string
  end
end

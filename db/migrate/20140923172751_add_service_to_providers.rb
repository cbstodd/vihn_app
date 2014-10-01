class AddServiceToProviders < ActiveRecord::Migration
  def change
    add_column :providers, :service, :string
    add_column :providers, :email, :string
    add_column :providers, :zip_code, :string
    add_column :providers, :phone_number, :string
    add_column :providers, :profile_info, :text
  end
end

class AddAddressToWorkshop < ActiveRecord::Migration[5.0]
  def change
    add_column :workshops, :address, :string
  end
end

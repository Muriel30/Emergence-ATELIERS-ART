class AddNameToWorkshop < ActiveRecord::Migration[5.0]
  def change
    add_column :workshops, :name, :string
  end
end

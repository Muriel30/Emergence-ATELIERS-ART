class AddDescriptionToWorkshop < ActiveRecord::Migration[5.0]
  def change
    add_column :workshops, :description, :text
  end
end

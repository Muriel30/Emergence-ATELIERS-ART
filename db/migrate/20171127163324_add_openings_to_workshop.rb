class AddOpeningsToWorkshop < ActiveRecord::Migration[5.0]
  def change
    add_column :workshops, :openings, :string
    add_column :workshops, :text, :string
  end
end

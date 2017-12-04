class AddCategoryIdToWorkshop < ActiveRecord::Migration[5.0]
  def change
    change_table :workshops do |t|
      t.belongs_to :category
    end
  end
end

class AddCategoryRefToPois < ActiveRecord::Migration[5.0]
  def change
    add_reference :pois, :category, foreign_key: true
  end
end

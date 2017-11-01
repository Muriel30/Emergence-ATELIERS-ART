class AddArtisanCategoryRefToStudios < ActiveRecord::Migration[5.0]
  def change
    add_reference :studios, :artisan_category, foreign_key: true
  end
end

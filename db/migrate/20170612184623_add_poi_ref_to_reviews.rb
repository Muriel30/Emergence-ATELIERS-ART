class AddPoiRefToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :poi, foreign_key: true
  end
end

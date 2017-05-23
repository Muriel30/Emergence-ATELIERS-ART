class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.text :comment
      t.integer :stars

      t.timestamps
    end
  end
end
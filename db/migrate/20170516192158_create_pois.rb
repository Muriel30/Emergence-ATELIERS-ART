class CreatePois < ActiveRecord::Migration[5.0]
  def change
    create_table :pois do |t|
      t.string :name
      t.string :address
      t.text :description
      t.text :openings
      t.integer :stars

      t.timestamps
    end
  end
end

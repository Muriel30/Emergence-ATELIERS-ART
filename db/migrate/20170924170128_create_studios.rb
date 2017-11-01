class CreateStudios < ActiveRecord::Migration[5.0]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :address
      t.text :description
      t.text :openings
      t.integer :stars

      t.timestamps
    end
  end
end

class AddUserToWorkshop < ActiveRecord::Migration[5.0]
  def change
    add_reference :workshops, :user, foreign_key: true, index: true

  end
end

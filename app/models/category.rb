class Category < ApplicationRecord
  has_many :pois, dependent: :destroy
end

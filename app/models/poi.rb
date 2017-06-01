class Poi < ApplicationRecord
  belongs_to :category
  has_attachment :photo
end

class Category < ApplicationRecord
  has_many :workshops, dependent: :destroy
end

class ArtistCategory < Category
end

class ArtisanCategory < ApplicationRecord
  has_many :studios, dependent: :destroy
end

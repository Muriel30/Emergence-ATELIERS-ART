class Poi < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has many :reviews
  has_attachment :photo

  validates :category, presence: true
end

class Review < ApplicationRecord
  belongs_to :user
  belongs_to :poi

  validates :user, presence: true
end

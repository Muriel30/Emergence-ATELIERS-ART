class Review < ApplicationRecord
  belongs_to :user

  validates :poi, presence: true
  validates :user, presence: true
  validates :comment, length: {minimum: 10}
end

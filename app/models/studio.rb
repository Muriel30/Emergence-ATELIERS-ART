class Studio < ApplicationRecord
  belongs_to :artisan_category
  belongs_to :user

  has_many :reviews

  has_attachment :photo

end

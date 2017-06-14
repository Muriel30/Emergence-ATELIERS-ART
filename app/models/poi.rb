class Poi < ApplicationRecord
  belongs_to :category
  belongs_to :user

  has_many :reviews

  has_attachment :photo

  def title
    "Le titre"
  end

  #after_create :send_welcome_email

  #private

  def send_creation_confirmation_email
    PoiMailer.creation_confirmation(self).deliver_now
  end
end

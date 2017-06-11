class PoiMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.poi_mailer.creation_confirmation.subject
  #
 def creation_confirmation(poi)
    @poi = poi

    mail(
      to:       @poi.user.email,
      subject:  "L'atelier #{@poi.name} a bien été enregistré"
    )
  end
end

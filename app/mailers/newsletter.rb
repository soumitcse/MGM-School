class Newsletter < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter.weekly.subject
  #
  def weekly
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end

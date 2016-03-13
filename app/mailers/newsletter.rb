class Newsletter < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter.weekly.subject
  #
  def weekly(name ,email,comment)
    @name = name
    @email_id = email
    @comment = comment
 	
    mail to: "mgmschoolfirozabad@gmail.com", subject: "Feedback"
  end
end

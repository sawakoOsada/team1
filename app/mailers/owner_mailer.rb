class OwnerMailer < ApplicationMailer
  default from: 'from@example.com'

  def owner_mail(email)
    @email = email
    mail to: @email, subject: I18n.t('views.messages.change_owner')
  end
end

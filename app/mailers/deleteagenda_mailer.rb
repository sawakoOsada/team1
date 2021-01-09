class DeleteagendaMailer < ApplicationMailer
  default from: 'from@example.com'

  def delete_agenda_mail(users)
    users.each do |user|
      @email = user.email
       mail to: @email, subject: I18n.t('views.messages.complete_delete_agenda')
    end
  end
end

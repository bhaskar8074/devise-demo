class WelcomeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.welcome_mailer.send_greeting_notification.subject
  default from: "bhaskarwkorps@gmail.com"

  def send_greetings_notification
    @user = User.find_by_email(params[:email])

    mail to: @user.email, subject: "Thanks namsthe Enjoy pandogoiii "
  end
end

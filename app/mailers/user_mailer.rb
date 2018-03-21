class UserMailer < ApplicationMailer
  default from: 'robson@test.com'

  def welcome_email(user)
    @user = user
    #email_with_name = %("#{@user.name}" <#{@user.email}>)
    mail(to: @user.email, subject: 'Welcome to my test mailer')
  end
end

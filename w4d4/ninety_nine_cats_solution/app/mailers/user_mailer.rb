class UserMailer < ApplicationMailer
  default from: 'ayy@john.com'

  def welcome_email(user)
    @user = user
    mail(to: user.email, subject: "Everyone, GET IN HERE")
  end
end

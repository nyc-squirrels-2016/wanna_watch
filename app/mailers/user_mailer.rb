class UserMailer < ApplicationMailer

  default from: 'watchwithfriends@gmail.com'

  def welcome_email(user)
    @user = user
    @url = 'http://localhost:3000/'
    mail(to: @user.email, subject: 'Welcome to Watch With Friends!')
  end
end

class UserMailer < ApplicationMailer

  default from: 'watchwithfriends@gmail.com'

  def welcome_email(user)
    @user = user
    @url = 'http://localhost:3000/'
    mail(to: @user.email, subject: 'Welcome to Watch With Friends!')
  end

  def event_canceled_email(event)
    @show = event.show
    @date = event.date
    @url = 'http://localhost:3000/'
    event.requests.each do |request|
      @user = User.find(request.guest_id)
      mail(to: @user.email, subject: 'Watch With Friends Event has been canceled.')

    end
  end
end

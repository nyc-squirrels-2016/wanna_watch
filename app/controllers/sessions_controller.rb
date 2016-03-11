class SessionsController<ApplicationController

  def new
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user
    else
      redirect_to '/'
  end

  def create
  end

  def destroy
  end

end

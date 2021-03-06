class SessionsController<ApplicationController

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      redirect_to root_path, alert: "Incorrect Username or Password"
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end

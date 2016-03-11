class UsersController<ApplicationController

  def show
  end

  def new
    @user = User.new
    render "_register", layout: false
  end

  def create
    @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to @user
      else
        redirect_to '/'
      end
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password, :first_name, :last_name, :about_me)
  end

end

class UsersController<ApplicationController

  def show
    @user = User.find(params[:id])
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

  def update
    binding.pry
  end


  private

  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :about_me, :address, :location, :profile_picture, :where_you_watch_picture)
  end

end

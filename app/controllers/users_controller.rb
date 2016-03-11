class UsersController<ApplicationController

  def show
  end

  def new
    @user = User.new
    render "_register", layout: false
  end

  def create
  end

end

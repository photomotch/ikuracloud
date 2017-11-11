class UsersController < ApplicationController
　before_action :logged_in_user, only: [:index, :edit, :update, :destroy]

  def show
	@user = User.find(params[:id])
	@machines = @user.machines
  end

  def new
	@user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the IkuraCloud!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

　　def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

　　def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end

class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcom to tha sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
    @user = User.new
  end
  
  def update
    @user = User.find(params[:id])
    @user = User.new(user_params)
　　redirect_to user_path(@user)  #追加文

    if @user.save
      flash[:success] = "Complete！"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :profile, :area, :password,
                                 :password_confirmation)
  end
end
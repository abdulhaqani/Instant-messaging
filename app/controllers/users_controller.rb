class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    byebug
    @user = User.new(params.require(:users).permit(:username, :password))
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = 'You have successfully signed up'
      redirect_to root_path
    else
      render 'signup'
    end
  end

  def destroy; end
end

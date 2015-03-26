class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
    unless @user == current_user
      flash.now[:danger] = "Access denied."
      redirect_to :back
    end
  end
end
class UsersController < ApplicationController
  def index
    @users = User.all
    render("users/index.html.erb")
  end
  def show
    @user = User.find(params[:id])
    @user_photo = Photo.where(:user_id => @user.id)

    render("users/show.html.erb")
  end
end

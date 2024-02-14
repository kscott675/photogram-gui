class UsersController < ApplicationController

  def create
    @user = User.new
    if @user.save
      params[:username] = @user.username
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def index
    #display all the users
    @users = User.all
    
    render({ :template => "user_templates/index" })
  end

  def show
    #display the username of the user

    #the photos posted by the user

    render({ :template => "user_templates/show" })
  end
end

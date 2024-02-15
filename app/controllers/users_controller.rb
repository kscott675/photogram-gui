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

  def update
    @user = User.find(params[:id])

    #@user.username = params.fetch("new_username")
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def index
    #display all the users
    @users = User.all
    
    render({ :template => "user_templates/index" })
  end

  def show
    #display the username of the user
   @user = User.find_by_username(params[:username])
    #the photos posted by the user

    render({ :template => "user_templates/show" })
  end
end

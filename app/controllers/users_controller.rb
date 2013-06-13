class UsersController < ApplicationController
  before_filter :require_admin, only: [:edit, :destroy]

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:name]
    @user.password = params[:password]
    @user.email = params[:email]
    if @user.email == 'nsainati2013@kellogg.northwestern.edu'  || @user.email == 'agarfinkel2013@kellogg.northwestern.edu' || @user.email == 'j-cohen@kellogg.northwestern.edu'
      @user.user_type = 'admin'
    else
      @user.user_type = 'member'
    end
    if @user.save
      session["user_id"] = @user.id
      redirect_to bottles_url, notice: "Welcome, #{@user.name}"
    else
      render 'new', notice: "Sorry, you do not have permission to be an administrator."
    end
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    @user.name = params[:name]
    @user.password = params[:password]
    @user.email = params[:email]
    if @user.email = 'nsainati2013@kellogg.northwestern.edu'  || 'agarfinkel2013@kellogg.northwestern.edu'
      @user.user_type = 'admin'
    else
      @user.user_type = 'member'
    end


    if @user.save
      redirect_to users_url
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find_by_id(params[:id])
    @user.destroy
    redirect_to users_url
  end
end

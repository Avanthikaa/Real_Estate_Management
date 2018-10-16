class UsersController < ApplicationController

  before_action :logged_in_user, only: [:edit, :show, :menu]

  def new
    @user = User.new
  end

  def menu
    @user = User.find(current_user.id)
  end

  def create
    @user = User.new(user_params)
    #print user_params
    # store all emails in lowercase to avoid duplicates and case-sensitive login errors:
    #@user.email.downcase!

    if @user.save
      # If user saves in the db successfully:
      flash[:notice] = "Account created successfully!"
      redirect_to login_path
    else
      # If user fails model validation - probably a bad password or duplicate email:
      flash.now.alert = "Oops, couldn't create account. Please make sure you are using a valid email and password and try again."
      render :new
    end
  end

  def show
    @user = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      # Handle a successful update.
      flash[:notice] = "Updated successfully!"
      redirect_to user_menu_path
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find_by_id(params[:id])
    if @user != nil
      User.find(params[:id]).destroy
      flash[:notice] = "User deleted"
      redirect_to user_show_path
    else
      flash[:notice] = "Record not found"
    end

  end



  private

  def user_params
    # strong parameters - whitelist of allowed fields #=> permit(:name, :email, ...)
    # that can be submitted by a form to the user model #=> require(:user)
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :user_type, :phone, :preferred_contact, :company_name)
  end

  # Before filters
  def logged_in?
    !current_user.nil?
  end

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      flash[:notice] = "Please log in."
      redirect_to login_path
    end
  end

end

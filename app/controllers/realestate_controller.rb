class RealestateController < ApplicationController

  def new
    @realestate = Realestate.new
  end

  def create
    @realestate = Realestate.new(realestate_params)
    @realestate.id = realestate_params[:id]

    if @realestate.save
      # If user saves in the db successfully:
      flash[:notice] = "Account created successfully!"
      redirect_to root_path
    else
      # If user fails model validation - probably a bad password or duplicate email:
      flash.now.alert = "Oops, couldn't create account. Please make sure you are using a valid email and password and try again."
      render :new
    end
  end
  private

  def show
    @realestate = Realestate.all
  end
  def realestate_params
    # strong parameters - whitelist of allowed fields #=> permit(:name, :email, ...)
    # that can be submitted by a form to the user model #=> require(:user)
    params.require(:realestate).permit(:id, :name, :website, :address, :size, :founded, :revenue, :synopsis)
  end

end

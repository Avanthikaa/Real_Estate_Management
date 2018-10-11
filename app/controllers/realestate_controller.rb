class RealestateController < ApplicationController

  def new
    @realestate = Realestate.new
  end

  def create
    @realestate = Realestate.new(realestate_params)

    if @realestate.save
      # If user saves in the db successfully:
      flash[:notice] = "Real Estate Company created successfully!"
      redirect_to root_path
    else
      # If user fails model validation - probably a bad password or duplicate email:
      flash.now.alert = "Oops, couldn't create company."
      render :new
    end
  end

  def show
    @realestate = Realestate.all
  end

  def edit
    @realestate = Realestate.find_by_id(params[:id])
    if @realestate == nil
      flash[:notice] = "Record not found!"
      render 'show'
    end
  end

  def update
    @realestate = Realestate.find(params[:id])
    if @realestate.update_attributes(realestate_params)
      # Handle a successful update.
      flash[:notice] = "Updated successfully!"
      redirect_to @realestate
    else
      render 'edit'
    end
  end

  private
  def realestate_params
    # strong parameters - whitelist of allowed fields #=> permit(:name, :email, ...)
    # that can be submitted by a form to the user model #=> require(:user)
    params.require(:realestate).permit(:name, :website, :address, :size, :founded, :revenue, :synopsis)
  end

end
